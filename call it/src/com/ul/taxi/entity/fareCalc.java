/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.ul.taxi.entity;

/**
 *
 * @author SONY
 */
public class fareCalc {
    public interface Fare
    {
        public void calc(Context context,int time);
    }
}
