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
		
		
		sql.append(" from Order where 1=1");
		if(order.getOrderid()!=0)
		{
			sql.append(" and orderid = ? ");
			sql.addArg(order.getOrderid());
		}
		if(order.getUserid()!=0)
		{
			sql.append(" and userid = ? ");
			sql.addArg(order.getUserid());
		}
		if(order.getCarno()!=0)
		{
			sql.append(" and carno = ? ");
			sql.addArg(order.getCarno());
		}
		if(order.getOrderstate()!=null&&!order.getOrderstate().equals(""))
		{
			sql.append(" and orderstate like ? ");
			sql.addArg("%"+order.getOrderstate()+"%");
		}
		
		

		list = this.getHibernateTemplate().find(sql.getSQL(),sql.getSQLArgs());
		return list;
	}




}
