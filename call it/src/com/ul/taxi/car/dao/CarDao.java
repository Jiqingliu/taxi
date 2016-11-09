package com.ul.taxi.car.dao;

import java.util.List;


import com.ul.taxi.car.model.Car;


public interface CarDao {

	public boolean add(Car car) throws Exception;
	public boolean delete(Car car) throws Exception;
	public boolean update(Car car) throws Exception;
	public List<Car> queryCarByType(Car car) throws Exception;
	public List<Car> queryCarByno(Car car) throws Exception;
	
}
