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
public class Context{
private Fare fare;
public Context(){
    fare=null;
}
    /**
     * @return the fare
     */
    public Fare getFare() {
        return fare;
    }

    /**
     * @param fare the fare to set
     */
    public void setFare(Fare fare) {
        this.fare = fare;
    }
    
}
