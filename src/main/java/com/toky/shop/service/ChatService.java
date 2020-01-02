package com.toky.shop.service;



import com.toky.shop.pojo.Chat;
import com.toky.shop.pojo.ChatExample;

import java.util.List;

public interface ChatService {
    public void insertChatSelective(Chat chat);

    public List<Chat> selectChatByExample(ChatExample chatExample);
}
