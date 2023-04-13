package com.studywithme.model;

import jakarta.persistence.*;

@Entity
public class Friend extends AbstractModel{
/*    @Id
    private Integer id;*/
    @ManyToOne
    @JoinColumn(name="friend_id")
    private User friend;

    @ManyToOne
    @JoinColumn(name="friendof_id")
    private User friendOf;

    private Integer status;

    public Friend() {
    }

/*    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getId() {
        return id;
    }*/

    public User getFriend() {
        return friend;
    }

    public void setFriend(User friend) {
        this.friend = friend;
    }

    public User getFriendOf() {
        return friendOf;
    }

    public void setFriendOf(User friendOf) {
        this.friendOf = friendOf;
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }

    public User getFriendof() {
        return friendOf;
    }

    public void setFriendof(User friendof) {
        this.friendOf = friendof;
    }


}
