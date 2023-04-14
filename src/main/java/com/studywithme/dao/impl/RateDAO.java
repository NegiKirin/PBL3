package com.studywithme.dao.impl;

import com.studywithme.dao.IRateDAO;
import com.studywithme.model.Rate;

import java.util.List;

public class RateDAO extends AbstractDAO<Rate> implements IRateDAO {
    @Override
    public List<Rate> findAll() {
        String hql = "from Rate";
        List<Rate> rates = query(hql);
        return rates.isEmpty()?null: rates;
    }

    @Override
    public Rate findOne(Integer id) {
        return findId(Rate.class,id);
    }

    @Override
    public boolean save(Rate rate) {
        return insert(rate);
    }

    @Override
    public boolean deleteId(Integer id) {
        return delete(findOne(id));
    }


}
