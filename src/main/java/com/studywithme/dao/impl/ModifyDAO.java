package com.studywithme.dao.impl;

import com.studywithme.dao.IModifyDAO;
import com.studywithme.model.Modify;

import java.util.List;

public class ModifyDAO extends AbstractDAO<Modify> implements IModifyDAO {
    @Override
    public List<Modify> findAll() {
        String hql = "from Modify";
        List<Modify> modifies = query(hql);
        return modifies.isEmpty()?null:modifies;
    }

    @Override
    public Modify findOne(Integer id) {
        return findId(Modify.class,id);
    }

    @Override
    public boolean save(Modify modify) {
        return insert(modify);
    }

    @Override
    public boolean deleteId(Integer id) {
        return delete(findOne(id));
    }

}
