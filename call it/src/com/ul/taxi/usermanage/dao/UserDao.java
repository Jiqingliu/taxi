package com.ul.taxi.usermanage.dao;

import java.util.List;

import com.ul.taxi.usermanage.model.User;

public interface UserDao {

	public boolean addUser(User user) throws Exception;
	public boolean deleteUser(User user) throws Exception;
	public boolean updateUser(User user) throws Exception;
	public  List<User> queryUser(User user) throws Exception;
	public User queryUserById(User user) throws Exception;
	public  List<User> CheckUser(User user) throws Exception;
	
}
