package com.toky.shop.controller.admin;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

import com.toky.shop.pojo.*;
import com.toky.shop.service.GoodsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.*;

@Controller
@RequestMapping("/admin/goods")
public class GoodsController {

  @Autowired
  private GoodsService goodsService;

  @RequestMapping("/showjson")
  @ResponseBody
  public Msg getAllGoods(@RequestParam(value = "page", defaultValue = "1") Integer pn, HttpServletResponse response, Model model, HttpSession session) {
    Admin admin = (Admin) session.getAttribute("admin");
    if (admin == null) {
      return Msg.fail("请先登录");
    }
    //一页显示几个数据
    PageHelper.startPage(pn, 10);

    List<Goods> employees = goodsService.selectByExample(new GoodsExample());

    //显示几个页号
    PageInfo page = new PageInfo(employees, 5);

    model.addAttribute("pageInfo", page);

    return Msg.success("查询成功!").add("pageInfo", page);
  }

  @RequestMapping("/show")
  public String goodsManage(@RequestParam(value = "page", defaultValue = "1") Integer pn, HttpServletResponse response, Model model, HttpSession session) throws IOException {
    Admin admin = (Admin) session.getAttribute("admin");
    if (admin == null) {
      return "redirect:/admin/login";
    }
        /*//一页显示几个数据
        PageHelper.startPage(pn, 10);
        List<Goods> employees = goodsService.selectByExample(new GoodsExample());
        //显示几个页号
        PageInfo page = new PageInfo(employees,5);
        model.addAttribute("pageInfo", page);*/
    List<Category> categoryList = cateService.selectByExample(new com.toky.shop.pojo.CategoryExample());
    model.addAttribute("categoryList", categoryList);

    return "adminAllGoods";
  }

  @RequestMapping("/add")
  public String showAdd(@ModelAttribute("succeseMsg") String msg, Model model, HttpSession session) {
    Admin admin = (Admin) session.getAttribute("admin");
    if (admin == null) {
      return "redirect:/admin/login";
    }

    if (!msg.equals("")) {
      model.addAttribute("msg", msg);
    }

    List<Category> categoryList = cateService.selectByExample(new CategoryExample());
    model.addAttribute("categoryList", categoryList);


    //还需要查询分类传给addGoods页面
    return "addGoods";
  }

  @RequestMapping(value = "/update", method = RequestMethod.POST)
  @ResponseBody
  public com.toky.shop.pojo.Msg updateGoods(com.toky.shop.pojo.Goods goods, HttpSession session) {
    com.toky.shop.pojo.Admin admin = (com.toky.shop.pojo.Admin) session.getAttribute("admin");
    if (admin == null) {
      return com.toky.shop.pojo.Msg.fail("请先登录");
    }
    /* goods.setGoodsid(goodsid);*/
    goodsService.updateGoodsById(goods);
    return com.toky.shop.pojo.Msg.success("更新成功!");
  }

  @RequestMapping(value = "/delete/{goodsid}", method = RequestMethod.DELETE)
  @ResponseBody
  public com.toky.shop.pojo.Msg deleteGoods(@PathVariable("goodsid") Integer goodsid) {
    goodsService.deleteGoodsById(goodsid);
    return com.toky.shop.pojo.Msg.success("删除成功!");
  }

  @RequestMapping("/addGoodsSuccess")
  public String addGoods(com.toky.shop.pojo.Goods goods,
                         @RequestParam MultipartFile[] fileToUpload,
                         HttpServletRequest request,
                         HttpServletResponse response,
                         RedirectAttributes redirectAttributes) throws IOException {

    /*goods.setCategory(1);*/
    goods.setUptime(new Date());
    goods.setActivityid(1);
    goodsService.addGoods(goods);

    for (MultipartFile multipartFile : fileToUpload) {
      if (multipartFile != null) {

        String origfilename = multipartFile.getOriginalFilename();
        //上传
        String path = "G:\\Projects\\imageSources\\";
        //新的图片名
        String imageName = UUID.randomUUID() + origfilename.substring(origfilename.lastIndexOf("."));
        //新的图片
        File newfile = new File(path + imageName);
//        System.out.println("pathname:::" + path + imageName);
        multipartFile.transferTo(newfile);

//把图片路径存入数据库中
        goodsService.addImagePath(new ImagePath(null, goods.getGoodsid(), imageName));


      }
    }

    redirectAttributes.addFlashAttribute("succeseMsg", "商品添加成功!");

    return "redirect:/admin/goods/add";
  }

  @RequestMapping("/addCategory")
  public String addcategory(@ModelAttribute("succeseMsg") String msg, Model model, HttpSession session) {
    com.toky.shop.pojo.Admin admin = (com.toky.shop.pojo.Admin) session.getAttribute("admin");
    if (admin == null) {
      return "redirect:/admin/login";
    }
    com.toky.shop.pojo.CategoryExample categoryExample = new com.toky.shop.pojo.CategoryExample();
    categoryExample.or();
    List<Category> categoryList;
    categoryList = cateService.selectByExample(categoryExample);
    model.addAttribute("categoryList", categoryList);
    if (!msg.equals("")) {
      model.addAttribute("msg", msg);
    }
    return "addCategory";
  }

  @Autowired
  private com.toky.shop.service.CateService cateService;

  @RequestMapping("/addCategoryResult")
  public String addCategoryResult(Category category, Model addCategoryResult, RedirectAttributes redirectAttributes) {
    List<Category> categoryList = new ArrayList<>();
    com.toky.shop.pojo.CategoryExample categoryExample = new com.toky.shop.pojo.CategoryExample();
    categoryExample.or().andCatenameEqualTo(category.getCatename());
    categoryList = cateService.selectByExample(categoryExample);
    if (!categoryList.isEmpty()) {
      redirectAttributes.addAttribute("succeseMsg", "分类已存在");
      return "redirect:/admin/goods/addCategory";
    } else {
      cateService.insertSelective(category);
      redirectAttributes.addFlashAttribute("succeseMsg", "分类添加成功!");
      return "redirect:/admin/goods/addCategory";
    }
  }

  @RequestMapping("/saveCate")
  @ResponseBody
  public com.toky.shop.pojo.Msg saveCate(Category category) {
    com.toky.shop.pojo.CategoryExample categoryExample = new com.toky.shop.pojo.CategoryExample();
    categoryExample.or().andCatenameEqualTo(category.getCatename());
    List<Category> categoryList = cateService.selectByExample(categoryExample);
    if (categoryList.isEmpty()) {
      cateService.updateByPrimaryKeySelective(category);
      return com.toky.shop.pojo.Msg.success("更新成功");
    } else return com.toky.shop.pojo.Msg.success("名字已经存在");
  }

  @RequestMapping("/deleteCate")
  @ResponseBody
  public com.toky.shop.pojo.Msg deleteCate(Category category) {
    cateService.deleteByPrimaryKey(category.getCateid());
    return com.toky.shop.pojo.Msg.success("删除成功");
  }
}
