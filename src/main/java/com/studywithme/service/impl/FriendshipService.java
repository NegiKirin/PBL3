package com.studywithme.service.impl;

import com.studywithme.dao.IFriendshipDAO;
import com.studywithme.dao.impl.FriendshipDAO;
import com.studywithme.model.Friendship;
import com.studywithme.model.User;
import com.studywithme.service.IFriendshipService;

import java.util.List;

public class FriendshipService implements IFriendshipService {
    private IFriendshipDAO friendshipDAO;
    @Override
    public List<Friendship> listFriend(String index, User user) {
        friendshipDAO = new FriendshipDAO();
        if(index == null) {
            List<Friendship> friendships = friendshipDAO.listFriend(1,user);
            return friendships.isEmpty()?null:friendships;
        } else {
            List<Friendship> friendships = friendshipDAO.listFriend(Integer.parseInt(index),user);
            return friendships.isEmpty()?null:friendships;
        }
    }
}
