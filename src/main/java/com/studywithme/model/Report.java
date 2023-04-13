package com.studywithme.model;

import jakarta.persistence.*;

@Entity
public class Report extends AbstractModel {

    private String detail;

    @ManyToOne(cascade = CascadeType.ALL, fetch = FetchType.LAZY)
    private User reporter;
    @ManyToOne(cascade = CascadeType.ALL, fetch = FetchType.LAZY)
    @JoinColumn(name = "id_address")
    private Address address;

    public Report() {
    }

    public String getDetail() {
        return detail;
    }

    public void setDetail(String detail) {
        this.detail = detail;
    }

    public User getReporter() {
        return reporter;
    }

    public void setReporter(User reporter) {
        this.reporter = reporter;
    }
}
