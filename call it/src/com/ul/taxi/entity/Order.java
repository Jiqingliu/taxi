/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.ul.taxi.entity;

import com.ul.taxi.entity.orderinterface.component;

/**
 *
 * @author SONY
 */
public class Order implements component{
     private static Order instance;

   //make the constructor private so that this class cannot be
   //instantiated
   private Order(){}

   //Get the only object available
   public static Order getInstance(){
      if(instance==null)
      {
      instance=new Order();    
             return instance;
      }
      return instance;
   }
    public String types;
    public String start;
    public String phno;
    public String time;
    public String end;

    /**
     * @return the type
     */
     @Override
    public String getTypes() {
        return types;
    }

    /**
     * @param type the type to set
     */
     @Override
    public void setTypes(String types) {
        this.types = types;
    }

    /**
     * @return the address
     */
   
    /**
     * @return the phno
     */
     @Override
    public String getPhno() {
        return phno;
    }

    /**
     * @param phno the phno to set
     */
     @Override
    public void setPhno(String phno) {
        this.phno = phno;
    }

    /**
     * @return the time
     */
     @Override
    public String getTime() {
        return time;
    }

    /**
     * @param time the time to set
     */
     @Override
    public void setTime(String time) {
        this.time = time;
    }

    /**
     * @return the from
     */
     @Override
    public String getStart() {
        return start;
    }

    /**
     * @param from the from to set
     */
     @Override
    public void setStart(String start) {
        this.start = start;
    }

    /**
     * @return the to
     */
     @Override
    public String getEnd() {
        return end;
    }

    /**
     * @param to the to to set
     */
     @Override
    public void setEnd(String end) {
        this.end = end;
    }
    
}
