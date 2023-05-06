package com.studywithme.test;

import com.studywithme.dao.impl.Test1DAO;
import com.studywithme.dao.impl.Test2DAO;
import com.studywithme.dao.impl.UserDAO;
import com.studywithme.model.Test1;
import com.studywithme.model.Test2;

public class Test3 {
    public static void main(String[] args) {
        Test1DAO test1DAO = new Test1DAO();
        Test1 test1 = test1DAO.findId(Test1.class,1);
        Test2DAO test2DAO = new Test2DAO();
        Test2 test2 = test2DAO.findId(Test2.class,1);
        test1.removeTest2(test2);
        test1DAO.delete(test1);
//        for (Test2 t: test1.getTest2s()) {
//            System.out.println(t.getDetail());
//        }
//        Test2DAO test2DAO = new Test2DAO();
//        Test2 test2 = test2DAO.findId(Test2.class,1);
//        test2DAO.delete(test2);
////        System.out.println(test2.getTest1().getDetail());
    }
}
