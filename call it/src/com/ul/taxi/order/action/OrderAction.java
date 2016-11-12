package com.ul.taxi.order.action;

import java.util.List;
import java.util.Map;
import org.apache.struts2.interceptor.RequestAware;
import org.apache.struts2.interceptor.SessionAware;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.ul.taxi.order.dao.OrderDao;
import com.ul.taxi.order.model.Order;

public class OrderAction extends ActionSupport  implements ModelDriven<Order>,RequestAware,SessionAware{

	private Order order = new Order();
	private Map<String,Object> request;
	private Map<String,Object> session;	

	public Order getModel() {
		
		return order;
	}
	public void setOrder(Order order) {
		this.order = order;
	}
	//Action应该依赖UserDao接口，这样符合面向抽象的编程思想
	private OrderDao orderdao = null;

	public void setDao(OrderDao orderdao) {
		this.orderdao = orderdao;
	}
	
	public String add() throws Exception
	{
		boolean result=true;
		Order o = new Order();
		o.setUserid(order.getUserid());
		o.setOrderstate("progress");
		List<Order> list = orderdao.queryOrder(o);
		if(list.isEmpty()){
		result = orderdao.add(order);
		
		if(result)
			return "success";
		else
			return "error";}
		else{
			return "double book";
		}
		
	}
	
	public String update() throws Exception
	{
		boolean result=true;
		result = orderdao.update(order);
		
		if(result)
			return "success";
		else
			return "error";
		
	}
	public String delete() throws Exception
	{
		boolean result=true;
		result = orderdao.delete(order);
		
		if(result)
			return "success";
		else
			return "error";
		
	}	
	//分页展示
	public void setRequest(Map<String, Object> request) {
		this.request = request;
		
	}

	public void setSession(Map<String, Object> session) {
		this.session=session;
		
	}
	
	

}
