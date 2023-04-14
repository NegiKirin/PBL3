package com.studywithme.service.impl;

import com.studywithme.dao.IModifyDAO;
import com.studywithme.dao.impl.ModifyDAO;
import com.studywithme.model.Modify;
import com.studywithme.model.User;
import com.studywithme.service.IModifyService;

import java.util.Date;

public class ModifyService implements IModifyService {

    private IModifyDAO modifyDAO;
    @Override
    public Modify createModify(User user, User editor, String detail) {
        Modify modify = new Modify();
        modifyDAO = new ModifyDAO();
        modify.setModifyBy(editor);
        modify.setUserModified(user);
        modify.setModifyDate(new Date(System.currentTimeMillis()));
        modify.setDetail(detail);
        return modifyDAO.save(modify);
    }
}
