package com.studywithme.model;

import jakarta.persistence.Entity;
import jakarta.persistence.OneToMany;

import java.util.HashSet;
import java.util.Set;

@Entity
public class AddressType extends AbstractModel{
    private String type;
    @OneToMany(mappedBy = "addressType")
    private Set<Address>  addresses = new HashSet<>();

    public AddressType() {
    }

    public AddressType(String type) {
        this.type = type;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }
}
