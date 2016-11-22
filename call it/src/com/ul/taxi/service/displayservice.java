/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.ul.taxi.service;

import com.ul.taxi.db.dbconnection;
import com.ul.taxi.entity.taxi;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author SONY
 */
public class displayservice {
    /*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


    private Connection connection=null;
    private Statement statement=null;
    private ResultSet resultSet;
     public displayservice() {
        this.resultSet = null;
    }
    
public taxi display(taxi ti,String types) throws ClassNotFoundException,SQLException
 {
         //String[] str = new String[5];
    String taxino,drivername,driverno;
  try{
      connection= dbconnection.createConnection();
  
   statement = connection.createStatement(); 
//Statement is used to write queries. Read more about it.
 resultSet = statement.executeQuery("SELECT taxino,drivername,driverno from taxi where taxitype='"+types+"' AND state='active' AND priority='1'"); //Here table name is users and userName,password are columns. fetching all the records and storing in a resultSet.
  taxino = resultSet.getString("taxino"); //fetch the values present in database
  drivername = resultSet.getString("drivername");
  driverno=resultSet.getString("driverno");
ti.setDrivername(drivername);
ti.setTaxino(taxino);
ti.setDriverno(driverno);
return ti;
//str[0]="taxino";
//str[1]="drivername";
//str[2]="driverno";
//return str;//User  us=new User();
 }
  catch(SQLException e)
 {
 }
  //      return null;
        return null;
 }
}

