/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.ul.taxi.entity;

import com.ul.taxi.entity.fareCalc.Fare;

/**
 *
 * @author SONY
 */
public class medium implements Fare{
        public int price;

    @Override
    public void calc(Context context,int time) {
                      context.setFare(this);	
        if(time>=8 && time<=21)
        {
            price=7;
        }
        else
            price=9;
    }
     public int pric()
       {
           return price;
       }
     
}

