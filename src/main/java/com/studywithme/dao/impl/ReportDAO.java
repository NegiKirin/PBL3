package com.studywithme.dao.impl;

import com.studywithme.dao.IReportDAO;
import com.studywithme.model.Report;

import java.util.List;

public class ReportDAO extends AbstractDAO<Report> implements IReportDAO {
    @Override
    public List<Report> findAll() {
        String hql = "from Report";
        List<Report> reports = query(hql);
        return reports.isEmpty()?null:reports;
    }

    @Override
    public Report findOne(Integer id) {
        return findId(Report.class,id);
    }

    @Override
    public boolean save(Report report) {
        return insert(report);
    }

    @Override
    public boolean deleteId(Integer id) {
        return delete(findOne(id));
    }

}