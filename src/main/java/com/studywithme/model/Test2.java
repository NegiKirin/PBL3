package com.studywithme.model;

import jakarta.persistence.*;

@Entity
public class Test2 {
    @Id
    private Integer id;

    private String detail;
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "idTest1")
    private Test1 test1;


    public Test2() {
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Test1 getTest1() {
        return test1;
    }

    public void setTest1(Test1 test1) {
        this.test1 = test1;
    }

    public String getDetail() {
        return detail;
    }

    public void setDetail(String detail) {
        this.detail = detail;
    }
}
