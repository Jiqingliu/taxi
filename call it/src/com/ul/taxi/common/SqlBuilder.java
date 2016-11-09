package com.ul.taxi.common;

import java.util.*;


public class SqlBuilder {
	
	private StringBuilder outSQL;
	private List<Object> argList;
	
	
	public SqlBuilder() {
		outSQL=new StringBuilder();
		init();
	}
	
	public SqlBuilder(int bufferSize) {
		outSQL=new StringBuilder(bufferSize);
		init();
	}
	
	public SqlBuilder(String sql) {
		outSQL=new StringBuilder(sql);
		init();
	}
	
	private void init(){
		argList=new ArrayList<Object>();
	}
	
	/**
	 * 取得�?��拼装成的sql语句
	 * @return sql语句
	 */
	public String getSQL(){
		return outSQL.toString();
	}
	

	public String toString(){
		return getSQL();
	}
	
	/**
	 * 取得sql builder内所有的sql语句的参�?
	 * @return 参数组成的集�?
	 */
	public Object[] getSQLArgs(){
		Object[] args=null;
		if(argList.size()==0)
			return null;
		
		args=new Object[argList.size()];
		for(int i=0;i<args.length;i++)
		{
			args[i]=argList.get(i);
		}
		
		return args;
	}
	

	/**
	 * 向sql builder中添加sql语句
	 * @param sql sql语句. 
	 */
	public void append(String sql){
		
		outSQL.append(sql);
			
	}
		
	/**
	 * 向sql builder中添加sql语句�?��参数的参数类�?
	 * @param sqlArg sql语句的参�? 
	 */
	public void addArg(Object sqlArg){
	
	  argList.add(sqlArg);
	}
	
	
}
