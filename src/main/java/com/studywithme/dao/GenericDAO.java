package com.studywithme.dao;

import java.util.List;

public interface GenericDAO<T> {

	public <T> List<T> query(String hql, Object... parameters);
	
	public boolean update (String hql, Object... parameters);
	
	public boolean insert (T t);
	
	public boolean detele(T t);
	
	public int count (String hql, Object... parameters);

}
