package com.studywithme.dao;

import com.studywithme.dao.GenericDAO;
import com.studywithme.model.Friendship;
import com.studywithme.model.User;

import java.util.List;

public interface IFriendshipDAO extends GenericDAO<Friendship>, InterfaceDAO<Friendship> {
    public List<Friendship> listFriend(Integer index, User user);
}
