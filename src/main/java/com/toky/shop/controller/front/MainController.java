package com.toky.shop.controller.front;


import com.toky.shop.pojo.*;
import com.toky.shop.service.CateService;
import com.toky.shop.service.GoodsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;

@Controller
public class MainController {

    @Autowired
    private CateService cateService;

    @Autowired
    private GoodsService goodsService;

    @RequestMapping("/main")
    public String showAllGoods(Model model, HttpSession session) {

        Integer userid;
        User user = (User) session.getAttribute("user");
        if (user == null) {
            userid = null;
        } else {
            userid = user.getUserid();
        }
        List<Goods> digGoods = getCateGoods("蔬菜类", userid);
        model.addAttribute("digGoods", digGoods);
        List<Goods> manuGoods = getCateGoods("手工类", userid);
        model.addAttribute("manuGoods", manuGoods);

        List<Goods> houseGoods = getCateGoods("水果类", userid);
        model.addAttribute("houseGoods", houseGoods);

        List<Goods> colGoods = getCateGoods("农家系列", userid);
        model.addAttribute("colGoods", colGoods);

        List<Goods> bookGoods = getCateGoods("家禽蛋类", userid);
        model.addAttribute("bookGoods", bookGoods);

        List<Goods> localGoods = getCateGoods("地方特产", userid);
        model.addAttribute("localGoods", localGoods);

        List<Goods> otherGoods = getCateGoods("其他", userid);
        model.addAttribute("otherGoods", otherGoods);
        return "main";
    }

    public List<Goods> getCateGoods(String cate, Integer userid) {
        //查询分类
        CategoryExample digCategoryExample = new CategoryExample();
        digCategoryExample.or().andCatenameLike(cate);
        List<Category> digCategoryList = cateService.selectByExample(digCategoryExample);

        if (digCategoryList.size() == 0) {
            return null;
        }

        //查询属于刚查到的分类的商品
        GoodsExample digGoodsExample = new GoodsExample();
        List<Integer> digCateId = new ArrayList<Integer>();
        for (Category tmp:digCategoryList) {
            digCateId.add(tmp.getCateid());
        }
        digGoodsExample.or().andCategoryIn(digCateId);

        List<Goods> goodsList = goodsService.selectByExampleLimit(digGoodsExample);

        List<Goods> goodsAndImage = new ArrayList<Goods>();
        //获取每个商品的图片
        for (Goods goods:goodsList) {
            //判断是否为登录状态
            if (userid == null) {
                goods.setFav(false);
            } else {
                Favorite favorite = goodsService.selectFavByKey(new FavoriteKey(userid, goods.getGoodsid()));
                if (favorite == null) {
                    goods.setFav(false);
                } else {
                    goods.setFav(true);
                }
            }

            List<ImagePath> imagePathList = goodsService.findImagePath(goods.getGoodsid());
            System.out.println(imagePathList);
            goods.setImagePaths(imagePathList);
            goodsAndImage.add(goods);
        }
        return goodsAndImage;
    }
}
