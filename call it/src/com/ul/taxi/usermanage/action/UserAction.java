package com.ul.taxi.usermanage.action;

import java.util.List;
import java.util.Map;
import org.apache.struts2.interceptor.RequestAware;
import org.apache.struts2.interceptor.SessionAware;
import com.ul.taxi.usermanage.dao.UserDao;
import com.ul.taxi.usermanage.model.User;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

public class UserAction extends ActionSupport  implements ModelDriven<User>,RequestAware,SessionAware{

	private static final String UserData = null;
	private User user = new User();
	private Map<String,Object> request;
	private Map<String,Object> session;	

	public User getModel() {
		
		return user;
	}
	//Action应该依赖UserDao接口，这样符合面向抽象的编程思想
	private UserDao dao = null;

	public void setDao(UserDao dao) {
		this.dao = dao;
	}
	public String add() throws Exception
	{
		boolean result=true;
		result = dao.addUser(user);
		
		if(result)
			return "success";
		else
			return "error";
		
	}
	
	public String update() throws Exception
	{
		boolean result=true;
		result = dao.updateUser(user);
		
		if(result)
			return "success";
		else
			return "error";
		
	}
	public String delete() throws Exception
	{
		boolean result=true;
		result = dao.deleteUser(user);
		
		if(result)
			return "success";
		else
			return "error";
		
	}
	
	//分页展示
	public String query() throws Exception
	{
		List<User> list = dao.queryUser(user);
	
		request.put("userlist",list);

		return "userlist";
	}

	public void setRequest(Map<String, Object> request) {
		this.request = request;
		
	}
	
	public String doCheckUser() throws Exception
	{

		List<User> list = dao.CheckUser(user);
		
			
		if(!list.isEmpty()){
			session.put("currentUser",list.get(0));
			return "main";
		}
			else
			return "no match user";

	}
	public void setUser(User user) {
		this.user = user;
	}



	public void setSession(Map<String, Object> session) {
		this.session=session;
		
	}
	
	

}
