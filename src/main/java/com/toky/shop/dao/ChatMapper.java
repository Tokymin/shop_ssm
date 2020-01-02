package com.toky.shop.dao;

import java.util.List;

import com.toky.shop.pojo.Chat;
import com.toky.shop.pojo.ChatExample;
import org.apache.ibatis.annotations.Param;

public interface ChatMapper {
    long countByExample(ChatExample example);

    int deleteByExample(ChatExample example);

    int deleteByPrimaryKey(Integer chatid);

    int insert(Chat record);

    int insertSelective(Chat record);

    List<Chat> selectByExample(ChatExample example);

    Chat selectByPrimaryKey(Integer chatid);

    int updateByExampleSelective(@Param("record") Chat record, @Param("example") ChatExample example);

    int updateByExample(@Param("record") Chat record, @Param("example") ChatExample example);

    int updateByPrimaryKeySelective(Chat record);

    int updateByPrimaryKey(Chat record);
}