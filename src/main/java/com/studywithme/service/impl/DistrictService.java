package com.studywithme.service.impl;

import com.studywithme.dao.IDistrictDAO;
import com.studywithme.dao.impl.DistrictDAO;
import com.studywithme.model.District;
import com.studywithme.service.IDistrictService;

import java.util.List;

public class DistrictService implements IDistrictService {
    private IDistrictDAO districtDAO;
    @Override
    public List<District> findAll() {
        districtDAO = new DistrictDAO();
        return districtDAO.findAll();
    }
}
