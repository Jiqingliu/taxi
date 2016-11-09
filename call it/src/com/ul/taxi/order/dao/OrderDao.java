package com.ul.taxi.order.dao;

import java.util.List;

import com.ul.taxi.order.model.Order;



public interface OrderDao {

	public boolean add(Order order) throws Exception;
	public boolean delete(Order order) throws Exception;
	public boolean update(Order order) throws Exception;
	public  List<Order> queryOrder(Order order) throws Exception;

	
}
