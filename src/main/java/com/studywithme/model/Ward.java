package com.studywithme.model;

import jakarta.persistence.*;

import java.util.HashSet;
import java.util.Set;

@Entity
public class Ward extends AbstractModel{

    private String ward;
    @ManyToOne(cascade = CascadeType.ALL, fetch = FetchType.EAGER)
    @JoinColumn(name = "id_district")
    private District district;

    @OneToMany(mappedBy = "ward")
    private Set<Address> addresses = new HashSet<>();

    public Ward() {
    }

    public Ward(String ward, District district) {
        this.ward = ward;
        this.district = district;
    }

    public String getWard() {
        return ward;
    }

    public void setWard(String ward) {
        this.ward = ward;
    }

    public District getDistrict() {
        return district;
    }

    public void setDistrict(District district) {
        this.district = district;
    }
}
