package com.studywithme.service.impl;

import com.studywithme.dao.IAddressTypeDAO;
import com.studywithme.dao.impl.AddressTypeDAO;
import com.studywithme.model.AddressType;
import com.studywithme.service.IAddressTypeService;

import java.util.List;

public class AddressTypeService implements IAddressTypeService {
    private IAddressTypeDAO addressTypeDAO;
    @Override
    public List<AddressType> findAll() {
        addressTypeDAO = new AddressTypeDAO();
        return addressTypeDAO.findAll();
    }
}
