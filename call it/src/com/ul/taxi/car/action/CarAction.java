package com.ul.taxi.car.action;

import java.io.PrintWriter;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;
import org.apache.struts2.interceptor.RequestAware;
import org.apache.struts2.interceptor.SessionAware;

import com.ul.taxi.car.dao.CarDao;
import com.ul.taxi.car.model.Car;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

public class CarAction extends ActionSupport  implements ModelDriven<Car>,RequestAware,SessionAware{

	private Car car = new Car();
	private Map<String,Object> request;
	private Map<String,Object> session;	
	public Car getModel() {		
		return car;
	}
	public void setRequest(Map<String, Object> request) {
		this.request = request;
		
	}	

	public void setCar(Car car) {
		this.car = car;
	}

	public void setSession(Map<String, Object> session) {
		this.session=session;
		
	}
	//Action应该依赖UserDao接口，这样符合面向抽象的编程思想
	private CarDao dao = null;

	public void setDao(CarDao dao) {
		this.dao = dao;
	}
	public String add() throws Exception
	{
		boolean result=true;
		result = dao.add(car);
		
		if(result)
			return "success";
		else
			return "error";
		
	}
	
	public String update() throws Exception
	{
		boolean result=true;
		result = dao.update(car);
		
		if(result)
			return "success";
		else
			return "error";
		
	}
	public String delete() throws Exception
	{
		boolean result=true;
		result = dao.delete(car);
		
		if(result)
			return "success";
		else
			return "error";
		
	}
	
	public void querybytype() throws Exception {
		List<Car> result = dao.queryCarByType(car);
		
		HttpServletResponse response = ServletActionContext.getResponse();
			response.setContentType("text/xml;charset=UTF-8");
	 		response.setHeader("pragma","no-cache");
	 		response.setHeader("cache-control","no-cache");
	 		response.setHeader("expires-control","0");
	 		PrintWriter out = response.getWriter();
	 		if(result!=null && !result.isEmpty()){
	 			car= result.get(0);
	 		out.print(car.getCarno());}
	 		else
	 		{out.print("0");}
	 		out.flush();
	 		out.close();
		}
	public void querybytype1() throws Exception {
		List<Car> result = dao.queryCarByno(car);
			HttpServletResponse response = ServletActionContext.getResponse();
			response.setContentType("text/xml;charset=UTF-8");
	 		response.setHeader("pragma","no-cache");
	 		response.setHeader("cache-control","no-cache");
	 		response.setHeader("expires-control","0");
	 		PrintWriter out = response.getWriter();
	 		if(result!=null && !result.isEmpty()){
	 			car= result.get(0);
	 		out.print("divername:"+car.getDivername()+" ||diverphone:"+car.getDiverphone()+" ||price:"+car.getPrice());}
	 		else
	 		{out.print("0");}
	 		out.flush();
	 		out.close();
		}
		
	}



	
	

