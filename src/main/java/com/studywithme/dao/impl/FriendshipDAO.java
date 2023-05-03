package com.studywithme.dao.impl;

import com.studywithme.dao.IFriendshipDAO;
import com.studywithme.model.Friendship;
import com.studywithme.model.User;
import com.studywithme.util.HibernateUtil;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.query.Query;

import java.util.ArrayList;
import java.util.List;

public class FriendshipDAO extends AbstractDAO<Friendship> implements IFriendshipDAO {
    @Override
    public List<Friendship> findAll() {
        String hql = "from Friendship";
        List<Friendship> friendships = query(hql);
        return friendships.isEmpty()?null:friendships;
    }

    @Override
    public Friendship findOne(Integer id) {
        return findId(Friendship.class,id);
    }

    @Override
    public Friendship save(Friendship friendship) {
        return insert(friendship);
    }

    @Override
    public boolean deleteId(Integer id) {
        return delete(findOne(id));
    }


    @Override
    public List<Friendship> listFriend(Integer index,User user) {
        List<Friendship> results = new ArrayList<>();
        try {
            SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
            if(sessionFactory!=null) {
                Session session = sessionFactory.openSession();
                Transaction tr = session.beginTransaction();
                String hql = "from  Friendship f WHERE f.friend =: user or f.requester=: user order by  f.createdDate asc ";
                Query query = session.createQuery(hql);
                query.setParameter("user",user);
                results = query.setFirstResult(0).setMaxResults(index*10).getResultList();
                for(int i = 0; i < results.size(); i++){
                    session.get(User.class,results.get(i).getFriend().getId());
                    session.get(User.class,results.get(i).getRequester().getId());
                }
                System.out.println("Lấy danh sách bạn bè");
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
