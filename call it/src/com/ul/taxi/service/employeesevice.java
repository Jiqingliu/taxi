/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.ul.taxi.service;

import com.ul.taxi.db.dbconnection;
import com.ul.taxi.entity.taxi;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author SONY
 */
public class employeesevice {
    private Connection connection=null;
    private Statement statement=null;
    private ResultSet resultSet;
    public void insert(taxi ta)throws ClassNotFoundException,SQLException
    {
       //HttpSession session=request.getSession();
        //String name="k";
//        Object user = MyThreadLocal.get();
//        name1=(String) user;
        String taxino=ta.getTaxino();
        String drivername=ta.getDrivername();
        String driverno=ta.getDriverno();
                String taxitype=ta.getTaxitype();
                        String state=ta.getState();
        String priority=ta.getPriority();
        connection= dbconnection.createConnection();
String sqlString="INSERT INTO taxi (taxino,drivername,driverno,taxitype,state,priority) VALUES ('"+taxino+"','"+drivername+"','"+driverno+"','"+taxitype+"','"+state+"','"+priority+"')";
            PreparedStatement preparedStmt = connection.prepareStatement(sqlString);    
                    preparedStmt.execute(); 
                             connection.close();
        
    }
}
    