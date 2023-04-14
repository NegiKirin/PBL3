package com.studywithme.dao.impl;

import com.studywithme.dao.IRequestFriendDAO;
import com.studywithme.model.RequestFriend;

import java.util.List;

public class RequestFriendDAO extends AbstractDAO<RequestFriend> implements IRequestFriendDAO {
    @Override
    public List<RequestFriend> findAll() {
        String hql = "from RequestFriend";
        List<RequestFriend> requestFriends = query(hql);
        return requestFriends.isEmpty()?null:requestFriends;
    }

    @Override
    public RequestFriend findOne(Integer id) {
        return findId(RequestFriend.class,id);
    }

    @Override
    public boolean save(RequestFriend requestFriend) {
        return insert(requestFriend);
    }

    @Override
    public boolean deleteId(Integer id) {
        return delete(findOne(id));
    }
}
