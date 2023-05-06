package com.studywithme.model;

import jakarta.persistence.*;

import java.util.HashSet;
import java.util.Set;
@Entity
public class Test1{
    @Id
    private Integer id;
    private String detail;
    @OneToMany(mappedBy = "test1", cascade = CascadeType.PERSIST, orphanRemoval = true, fetch = FetchType.EAGER)
    private Set<Test2> test2s = new HashSet<>();

    public Test1() {
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Set<Test2> getTest2s() {
        return test2s;
    }

    public void setTest2s(Set<Test2> test2s) {
        this.test2s = test2s;
    }

    public String getDetail() {
        return detail;
    }

    public void setDetail(String detail) {
        this.detail = detail;
    }

    public void addTest2(Test2 test2) {
        this.test2s.add(test2);

    }

    public void removeTest2(Test2 test2) {
        this.test2s.remove(test2);
    }
}
