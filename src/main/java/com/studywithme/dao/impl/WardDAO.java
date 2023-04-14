package com.studywithme.dao.impl;

import com.studywithme.dao.IWardDAO;
import com.studywithme.model.Ward;

import java.util.List;

public class WardDAO extends AbstractDAO<Ward> implements IWardDAO {
    @Override
    public List<Ward> findAll() {
        String hql = "from Ward";
        List<Ward> wards = query(hql);
        return wards.isEmpty()?null:wards;
    }

    @Override
    public Ward findOne(Integer id) {
        return findId(Ward.class,id);
    }

    @Override
    public boolean save(Ward ward) {
        return insert(ward);
    }

    @Override
    public boolean deleteId(Integer id) {
        return delete(findOne(id));
    }

}