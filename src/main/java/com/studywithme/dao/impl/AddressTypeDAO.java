package com.studywithme.dao.impl;

import com.studywithme.dao.IAddressTypeDAO;
import com.studywithme.model.AddressType;

import java.util.List;

public class AddressTypeDAO extends AbstractDAO<AddressType> implements IAddressTypeDAO {
    @Override
    public List<AddressType> findAll() {
        String hql = "FROM AddressType";
        List<AddressType> addressTypes = query(hql);
        return addressTypes.isEmpty()? null : addressTypes;
    }

    @Override
    public AddressType findOne(Integer id) {
        return findId(AddressType.class,id);
    }

    @Override
    public boolean save(AddressType addressType) {
        return save(addressType);
    }

    @Override
    public boolean deleteId(Integer id) {
        return delete(findOne(id));
    }


}
