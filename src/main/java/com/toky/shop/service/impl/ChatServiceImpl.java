package com.toky.shop.service.impl;


import com.toky.shop.dao.ChatMapper;
import com.toky.shop.pojo.Chat;
import com.toky.shop.pojo.ChatExample;
import com.toky.shop.service.ChatService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;


@Service("chatService")
public class ChatServiceImpl implements ChatService {

    @Autowired(required = false)
    ChatMapper chatMapper;

    @Override
    public void insertChatSelective(Chat chat) {
        chatMapper.insertSelective(chat);
    }

    @Override
    public List<Chat> selectChatByExample(ChatExample chatExample) {
        return chatMapper.selectByExample(chatExample);
    }
}
