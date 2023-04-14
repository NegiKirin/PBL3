package com.studywithme.dao.impl;

import com.studywithme.dao.IFriendDAO;
import com.studywithme.model.Friend;

import java.util.List;

public class FriendDAO extends AbstractDAO<Friend> implements IFriendDAO {
    @Override
    public List<Friend> findAll() {
        String hql = "from Friend";

        return null;
    }

    @Override
    public Friend findOne(Integer id) {
        return findId(Friend.class,id);
    }

    @Override
    public boolean save(Friend friend) {
        return insert(friend);
    }

    @Override
    public boolean deleteId(Integer id) {
        return delete(findOne(id));
    }

}
