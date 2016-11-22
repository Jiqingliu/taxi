/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.ul.taxi.service;
import com.ul.taxi.db.dbconnection;
import com.ul.taxi.entity.Order;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
/**
 *
 * @author SONY
 */
public class orderservice{
    private Connection connection=null;
    private Statement statement=null;
    private ResultSet resultSet;

    public orderservice() {
        this.resultSet = null;
    }

 
    public void store(Order o,String uid)throws ClassNotFoundException,SQLException
    {
       //HttpSession session=request.getSession();
        //String name="k";
//        Object user = MyThreadLocal.get();
//        name1=(String) user;
        String name1;
        name1 = uid;
        String types=o.getTypes();
        String start=o.getStart();
        String end=o.getEnd();
        String time=o.getTime();
        String phno=o.getPhno();
        connection= dbconnection.createConnection();
String sqlString;
        sqlString = "INSERT INTO book (name,type,start,end,time,phno) VALUES ('"+name1+"','"+types+"','"+start+"','"+end+"','"+time+"','"+phno+"')";
            PreparedStatement preparedStmt = connection.prepareStatement(sqlString);    
                    preparedStmt.execute();
                             connection.close();
        
    }
}
