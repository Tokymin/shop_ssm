package com.toky.shop.service.impl;


import com.toky.shop.pojo.Activity;
import com.toky.shop.pojo.ActivityExample;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;


@Service("activityService")
public class ActivityServiceImpl implements com.toky.shop.service.ActivityService {

    @Autowired(required = false)
    com.toky.shop.dao.ActivityMapper activityMapper;

    public List<Activity> getAllActivity(ActivityExample activityExample) {
        return activityMapper.selectByExample(activityExample);
    }

    @Override
    public void insertActivitySelective(Activity activity) {
        activityMapper.insertSelective(activity);
    }

    @Override
    public Activity selectByKey(Integer activityid) {
        return activityMapper.selectByPrimaryKey(activityid);
    }

    @Override
    public void deleteByActivityId(Integer activityid) {
        activityMapper.deleteByPrimaryKey(activityid);
    }

    /*@Override
    public void updateGoodsActSelective(Goods goods) {

    }*/
}
