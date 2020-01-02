package com.toky.shop.service.impl;


import com.toky.shop.pojo.Admin;
import com.toky.shop.service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service("adminService")
public class AdminServiceImpl implements AdminService {

    @Autowired(required = false)
    private com.toky.shop.dao.AdminMapper adminMapper;

    @Override
    public Admin selectByName(Admin admin) {
        return adminMapper.selectByName(admin);
    }
}
