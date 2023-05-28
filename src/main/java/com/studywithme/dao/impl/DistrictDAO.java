package com.studywithme.dao.impl;

import com.studywithme.dao.IDistrictDAO;
import com.studywithme.model.District;

import java.util.List;

public class DistrictDAO extends AbstractDAO<District> implements IDistrictDAO {
    private static IDistrictDAO districtDAO;
    public static IDistrictDAO getInstance() {
        if (districtDAO == null) {
            districtDAO = new DistrictDAO();
        }
        return districtDAO;
    }
    @Override
    public List<District> findAll() {
        String hql = "From District";
        List<District> districts = query(hql);
        return districts.isEmpty()? null : districts;
    }

    @Override
    public District findOne(Integer id) {
        return findId(District.class,id);
    }

    @Override
    public District save(District district) {
        return insert(district);
    }

    @Override
    public boolean deleteId(Integer id) {
        return delete(findOne(id));
    }


}
