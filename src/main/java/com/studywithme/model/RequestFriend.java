package com.studywithme.model;

import jakarta.persistence.CascadeType;
import jakarta.persistence.Entity;
import jakarta.persistence.FetchType;
import jakarta.persistence.ManyToOne;
@Entity
public class RequestFriend extends AbstractModel{
    @ManyToOne(cascade = CascadeType.ALL,fetch = FetchType.LAZY)
    private User userRequested;
}
