package com.studywithme.service.impl;

import com.studywithme.dao.IFriendshipDAO;
import com.studywithme.dao.impl.FriendshipDAO;
import com.studywithme.model.Friendship;
import com.studywithme.model.User;
import com.studywithme.paging.Pageable;
import com.studywithme.service.IFriendshipService;

import java.util.List;

public class FriendshipService implements IFriendshipService {
    private static IFriendshipService friendshipService;
    public static IFriendshipService getInstance() {
        if (friendshipService == null) {
            friendshipService = new FriendshipService();
        }
        return friendshipService;
    }
    private IFriendshipDAO friendshipDAO;
    @Override
    public List<Friendship> listFriend(String index, User user) {
        friendshipDAO = new FriendshipDAO();
        if(index == null) {
            List<Friendship> friendships = friendshipDAO.listFriend(5,user);
            return friendships.isEmpty()?null:friendships;
        } else {
            List<Friendship> friendships = friendshipDAO.listFriend(Integer.parseInt(index),user);
            return friendships.isEmpty()?null:friendships;
        }
    }

    @Override
    public List<Friendship> pagingFriend(Pageable pageable, User user) {
        friendshipDAO = new FriendshipDAO();
        return friendshipDAO.pagingFriend(pageable, user);
    }

    @Override
    public Integer totalFriend(User user) {
        friendshipDAO = new FriendshipDAO();
        return friendshipDAO.countFriend(user);
    }
}
