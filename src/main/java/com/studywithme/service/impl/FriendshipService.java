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
    public List<Friendship> listFriend(Integer index, User user) {
        friendshipDAO = new FriendshipDAO();
        List<Friendship> friendships = friendshipDAO.listFriend(index,user);
        return friendships.isEmpty()?null:friendships;
    }
}
