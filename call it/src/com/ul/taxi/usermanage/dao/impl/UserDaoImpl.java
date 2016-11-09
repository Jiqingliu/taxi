package com.ul.taxi.usermanage.dao.impl;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.ul.taxi.common.SqlBuilder;
import com.ul.taxi.usermanage.dao.UserDao;
import com.ul.taxi.usermanage.model.User;

public class UserDaoImpl extends HibernateDaoSupport implements UserDao {

	public boolean addUser(User user) throws Exception {
		
		this.getHibernateTemplate().save(user);
		return true;
	}

	public boolean deleteUser(User user) throws Exception {
		
		this.getHibernateTemplate().delete(user);
		return true;
	}

	public boolean updateUser(User user) throws Exception {
		
		this.getHibernateTemplate().update(user);
		return true;
	}

	public  List<User> queryUser(User user) throws Exception {
		
		List<User> list = null;
		
		SqlBuilder sql = new SqlBuilder();
		sql.append(" from User where 1=1");
		
		if(user.getUsername()!=null&&!user.getUsername().equals(""))
		{
			sql.append(" and username like ? ");
			sql.addArg("%"+user.getUsername()+"%");
		}
		if(user.getUserid()!=0)
		{
			sql.append(" and userid = ? ");
			sql.addArg(user.getUserid());
		}
		

		list = this.getHibernateTemplate().find(sql.getSQL(),sql.getSQLArgs());
		return list;
	}
public User queryUserById(User user) throws Exception
{
	User result = (User)this.getHibernateTemplate().get(User.class,user.getUserid());
	return result;
}


public  List<User> CheckUser(User user) throws Exception {
	
	List<User> list = null;
	
	SqlBuilder sql = new SqlBuilder();
	boolean result = false;
	sql.append(" from User where 1=1");
	
     sql.append(" and username = ? ");
		sql.addArg(user.getUsername());

		sql.append(" and userpassword = ? ");
		sql.addArg(user.getUserpassword());
	

	list = this.getHibernateTemplate().find(sql.getSQL(),sql.getSQLArgs());
	return list;
}

}
