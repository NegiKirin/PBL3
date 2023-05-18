package com.studywithme.sort;

public class Sorter {

    private String sortName;
    private String sortBy;
    private String date;
    public Sorter() {
    }

    public Sorter (String sortName, String sortBy, String date) {
        this.sortName = sortName;
        this.sortBy = sortBy;
        this.date = date;
    }

    public String getSortName() {
        return this.sortName;
    }

    public String getSortBy() {
        return sortBy;
    }

    public void setSortName(String sortName) {
        this.sortName = sortName;
    }

    public void setSortBy(String sortBy) {
        this.sortBy = sortBy;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }
}
