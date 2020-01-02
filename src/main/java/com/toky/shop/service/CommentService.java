package com.toky.shop.service;



import com.toky.shop.pojo.Comment;
import com.toky.shop.pojo.CommentExample;

import java.util.List;

public interface CommentService {
    public void insertSelective(Comment comment);

    public List<Comment> selectByExample(CommentExample commentExample);
}
