package com.toky.shop.controller.admin;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("/admin/activity")
public class ActivityController {

    @Autowired(required = false)
    com.toky.shop.service.ActivityService activityService;

    @Autowired(required = false)
    com.toky.shop.service.GoodsService goodsService;

    @RequestMapping("/show")
    public String showActivity(@RequestParam(value = "page",defaultValue = "1") Integer pn, Model model, HttpSession session) {

        com.toky.shop.pojo.Admin admin = (com.toky.shop.pojo.Admin) session.getAttribute("admin");
        if (admin == null) {
            return "redirect:/admin/login";
        }

        //一页显示几个数据
        PageHelper.startPage(pn, 10);

        com.toky.shop.pojo.ActivityExample activityExample = new com.toky.shop.pojo.ActivityExample();
        activityExample.or();

        List<com.toky.shop.pojo.Activity> activityList = activityService.getAllActivity(activityExample);

        //显示几个页号
        PageInfo page = new PageInfo(activityList,5);
        model.addAttribute("pageInfo", page);

        return "activity";
    }

    @RequestMapping("/showjson")
    @ResponseBody
    public com.toky.shop.pojo.Msg showActivityJson(@RequestParam(value = "page",defaultValue = "1") Integer pn, Model model , HttpSession session) {

        com.toky.shop.pojo.Admin admin = (com.toky.shop.pojo.Admin) session.getAttribute("admin");
        if (admin == null) {
            return com.toky.shop.pojo.Msg.fail("请先登录");
        }

        com.toky.shop.pojo.ActivityExample activityExample = new com.toky.shop.pojo.ActivityExample();
        activityExample.or();

        List<com.toky.shop.pojo.Activity> activityList = activityService.getAllActivity(activityExample);

        return com.toky.shop.pojo.Msg.success("获取活动信息成功").add("activity",activityList);
    }

    @RequestMapping("/add")
    public String showAddActivity(HttpSession session) {
        com.toky.shop.pojo.Admin admin = (com.toky.shop.pojo.Admin) session.getAttribute("admin");
        if (admin == null) {
            return "redirect:/admin/login";
        }
        return "addActivity";
    }

    @RequestMapping("/addResult")
    public String addActivity(com.toky.shop.pojo.Activity activity) {

        activityService.insertActivitySelective(activity);

        return "redirect:/admin/activity/show";
    }

    @RequestMapping("/update")
    @ResponseBody
    public com.toky.shop.pojo.Msg updateActivity(Integer goodsid, Integer activityid, HttpSession session) {
        com.toky.shop.pojo.Admin admin = (com.toky.shop.pojo.Admin) session.getAttribute("admin");
        if (admin == null) {
            return com.toky.shop.pojo.Msg.fail("请先登录");
        }
        com.toky.shop.pojo.Goods goods = new com.toky.shop.pojo.Goods();
        goods.setActivityid(activityid);
        goods.setGoodsid(goodsid);
        goodsService.updateGoodsById(goods);
        return com.toky.shop.pojo.Msg.success("更新商品活动成功");
    }

    @RequestMapping("delete")
    public String deleteActivity(Integer activityid, HttpSession session) {
        com.toky.shop.pojo.Admin admin = (com.toky.shop.pojo.Admin) session.getAttribute("admin");
        if (admin == null) {
            return "redirect:/admin/login";
        }

        activityService.deleteByActivityId(activityid);
        return "redirect:/admin/activity/show";
    }
}
