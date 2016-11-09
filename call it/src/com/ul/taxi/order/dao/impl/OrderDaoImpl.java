package com.ul.taxi.order.dao.impl;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.ul.taxi.common.SqlBuilder;
import com.ul.taxi.order.dao.OrderDao;
import com.ul.taxi.order.model.Order;



public class OrderDaoImpl extends HibernateDaoSupport implements OrderDao {

	public boolean add(Order order) throws Exception {
		
		this.getHibernateTemplate().save(order);
		return true;
	}

	public boolean delete(Order order) throws Exception {
		
		this.getHibernateTemplate().delete(order);
		return true;
	}

	public boolean update(Order order) throws Exception {
		
		this.getHibernateTemplate().update(order);
		return true;
	}

	public  List<Order> queryOrder(Order order) throws Exception {
		
		List<Order> list = null;
		
		SqlBuilder sql = new SqlBuilder();
		

		

		list = this.getHibernateTemplate().find(sql.getSQL(),sql.getSQLArgs());
		return list;
	}




}
