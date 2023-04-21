package com.studywithme.service;

import com.studywithme.model.Friendship;
import com.studywithme.model.User;

import java.util.List;

public interface IFriendshipService {
    public List<Friendship> listFriend(Integer index, User user);
}
