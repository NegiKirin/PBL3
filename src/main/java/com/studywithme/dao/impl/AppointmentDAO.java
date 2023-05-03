package com.studywithme.dao.impl;

import com.studywithme.dao.IAppointmentDAO;
import com.studywithme.model.Address;
import com.studywithme.model.Appointment;
import com.studywithme.model.User;
import com.studywithme.paging.Pageble;
import com.studywithme.util.HibernateUtil;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.query.Query;

import java.util.ArrayList;
import java.util.List;

public class AppointmentDAO extends AbstractDAO<Appointment> implements IAppointmentDAO {
    @Override
    public List<Appointment> findAll() {
        String hql = "FROM Appointment";
        List<Appointment> appointments = query(hql);
        return appointments.isEmpty()? null : appointments;
    }

    @Override
    public Appointment findOne(Integer id) {
        return findId(Appointment.class,id);
    }

    @Override
    public Appointment save(Appointment appointment) {
        return insert(appointment);
    }

    @Override
    public boolean deleteId(Integer id) {
        return delete(findOne(id));
    }


    @Override
    public List<Appointment> pagingAppointment(Pageble pageble) {
        List<Appointment> results = new ArrayList<>();
        try {
            SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
            if(sessionFactory!=null) {
                Session session = sessionFactory.openSession();
                Transaction tr = session.beginTransaction();
                StringBuilder hql = new StringBuilder("from  Appointment a");
                if(pageble.getSorter()!=null){
                    hql.append(" order by a." + pageble.getSorter().getSortName() + " " + pageble.getSorter().getSortBy()+ "");
                }
                Query query = session.createQuery(hql.toString());
                results = query.setFirstResult(pageble.getOffset()).setMaxResults(pageble.getLimit()).getResultList();
                for(int i = 0; i < results.size(); i++){
                    session.get(User.class,results.get(i).getHost().getId());
                    session.get(Address.class,results.get(i).getAddress().getId());
                }
                tr.commit();
                session.close();
            }
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
        return results;
    }

    @Override
    public Integer count() {
        String hql = "select count(*) from Appointment";
        return count(hql);
    }

    @Override
    public List<Appointment> findByHost(User host) {
        String hql = "from Appointment a where a.host = :host";
        List<Appointment> appointments = query(hql,"host",host);
        return appointments.isEmpty()?null:appointments;
    }
}
