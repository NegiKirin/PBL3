package com.studywithme.dao.impl;

import com.studywithme.dao.IAppointmentDAO;
import com.studywithme.model.Address;
import com.studywithme.model.Appointment;
import com.studywithme.model.Rate;
import com.studywithme.model.User;
import com.studywithme.paging.Pageble;
import com.studywithme.util.HibernateUtil;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.query.Query;

import java.sql.Time;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalTime;
import java.util.ArrayList;
import java.util.Date;
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
                StringBuilder hql = new StringBuilder("from Appointment a");
                String dateMeeting = pageble.getSorter().getDateMeeting();
                if(pageble.getSorter() != null){
                    if(dateMeeting != null){
                        hql.append(" where a.dateMeeting = :dateMeeting");
                    } else {
                        hql.append(" where a.dateMeeting > :today or (a.dateMeeting = :today and a.ending_time > :now)");
                    }
                    hql.append(" order by a." + pageble.getSorter().getSortName() + " " + pageble.getSorter().getSortBy()+ "");
                }
                Query query = session.createQuery(hql.toString());
                if(dateMeeting != null){
                    Date date = new SimpleDateFormat("yyyy-MM-dd").parse(pageble.getSorter().getDateMeeting());
                    java.sql.Date dateSQL = new java.sql.Date(date.getTime());
                    query.setParameter("dateMeeting",dateSQL);
                } else {
                    Date date = new Date(System.currentTimeMillis());
                    java.sql.Date dateSQL = new java.sql.Date(date.getTime());
                    query.setParameter("today",dateSQL);
                    query.setParameter("now",Time.valueOf(LocalTime.now()));
                }
//                query.setParameter("now",Time.valueOf(LocalTime.now()));
                results = query.setFirstResult(pageble.getOffset()).setMaxResults(pageble.getLimit()).getResultList();
                for(int i = 0; i < results.size(); i++){
                    session.get(User.class,results.get(i).getHost().getId());
                    session.get(Address.class,results.get(i).getAddress().getId());
                }
                tr.commit();
                session.close();
                return results;
            }
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
        return null;
    }

    @Override
    public Integer count(Pageble pageble) {
        StringBuilder hql = new StringBuilder("select count(*) from Appointment a where");
        String dateMeeting = pageble.getSorter().getDateMeeting();
        try {
            if (dateMeeting != null) {
                hql.append(" a.dateMeeting = :dateMeeting");
                Date date = new SimpleDateFormat("yyyy-MM-dd").parse(pageble.getSorter().getDateMeeting());
                java.sql.Date today = new java.sql.Date(date.getTime());
                return count(hql.toString(),"dateMeeting",today);
            } else {
                hql.append(" a.dateMeeting > :today or (a.dateMeeting = :today and a.ending_time > :now)");
                Date date = new Date(System.currentTimeMillis());
                java.sql.Date today = new java.sql.Date(date.getTime());
                return count(hql.toString(),"today", today, "now", Time.valueOf(LocalTime.now()));
            }
        }catch (ParseException e){
            e.printStackTrace();
            return 0;
        }
    }

    @Override
    public List<Appointment> findByHost(User host) {
        String hql = "from Appointment a where a.host = :host";
        List<Appointment> appointments = query(hql,"host",host);
        return appointments.isEmpty()?null:appointments;
    }

    @Override
    public List<Appointment> findByParticipants(User participant,Integer maxItem) {
        List<Appointment> results = new ArrayList<>();
        try {
            SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
            if(sessionFactory!=null) {
                Session session = sessionFactory.openSession();
                Transaction tr = session.beginTransaction();
                String hql = "from Appointment a left join a.participants p where a.ending_time < :today and (p = :participant or a.host = :participant) order by a.createdDate asc";
                Query query = session.createQuery(hql);
                query.setParameter("today",new Time(System.currentTimeMillis()));
                query.setParameter("participant",participant);
                results = query.setFirstResult(0).setMaxResults(maxItem).getResultList();
                for(int i = 0; i < results.size(); i++){
                    session.get(User.class,results.get(i).getHost().getId());
                    for (User u : results.get(i).getParticipants()) {
                        session.get(User.class,u.getId());
                    }
                    for (Rate r: results.get(i).getRates()) {
                        session.get(Rate.class,r.getId());
                    }
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
}
