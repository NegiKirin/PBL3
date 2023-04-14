package com.studywithme.dao.impl;

import com.studywithme.dao.IFriendshipDAO;
import com.studywithme.model.Friendship;

import java.util.List;

public class FriendshipDAO extends AbstractDAO<Friendship> implements IFriendshipDAO {
    @Override
    public List<Friendship> findAll() {
        String hql = "from Friendship";
        List<Friendship> friendships = query(hql);
        return friendships.isEmpty()?null:friendships;
    }

    @Override
    public Friendship findOne(Integer id) {
        return findId(Friendship.class,id);
    }

    @Override
    public Friendship save(Friendship friendship) {
        return insert(friendship);
    }

    @Override
    public boolean deleteId(Integer id) {
        return delete(findOne(id));
    }

}
