package com.ul.taxi.car.dao.impl;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.ul.taxi.car.dao.CarDao;
import com.ul.taxi.car.model.Car;
import com.ul.taxi.common.SqlBuilder;
import com.ul.taxi.usermanage.model.User;



public class CarDaoImpl extends HibernateDaoSupport implements CarDao {

	public boolean add(Car car) throws Exception {
		
		this.getHibernateTemplate().save(car);
		return true;
	}

	public boolean delete(Car car) throws Exception {
		
		this.getHibernateTemplate().delete(car);
		return true;
	}

	public boolean update(Car car) throws Exception {
		
		this.getHibernateTemplate().update(car);
		return true;
	}

	public List<Car> queryCarByType(Car car) throws Exception
	{
		List<Car> list = null;

		SqlBuilder sql = new SqlBuilder();
		
		sql.append(" from Car where 1=1");
		
	     sql.append(" and cartype = ? ");
			sql.addArg(car.getCartype());
			sql.append(" and state = ? ");
			sql.addArg("free");
			sql.append(" order by mark asc ");

		list = this.getHibernateTemplate().find(sql.getSQL(),sql.getSQLArgs());
		return list;
	}
	public List<Car> queryCarByno(Car car) throws Exception
	{
		List<Car> list = null;

		SqlBuilder sql = new SqlBuilder();
		
		sql.append(" from Car where 1=1");
		
	     sql.append(" and carno = ? ");
			sql.addArg(car.getCarno());

		list = this.getHibernateTemplate().find(sql.getSQL(),sql.getSQLArgs());
		return list;
	}
}
