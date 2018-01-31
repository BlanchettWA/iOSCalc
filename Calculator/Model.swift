//
//  Model.swift
//  Calculator
//
//  Created by William Blanchett on 2/11/15.
//  Copyright (c) 2015 Liam at TestApp. All rights reserved.

import Foundation

//The function through which all commands and input goes. Everything flows through this one funciton.

/*

This what happens when I was messing around and didnt know WHAT I was doing. 

func getpress (inpress: NSString, type: Int) -> NSString {
    // The press of a button sends two variables, one that is the actual press, and an inteteger that fuctions through the switch to tell it what to do. 1 = A number; 2 = an operator; 3 = decimal, 4 = A clear function 5 = An equal function 6 = a negative.
    
//DIVIDER FOR ALL VARIABLES------------------------------------------
  
    //Storage for first number
    var numa: NSString
    
    //Storage for second number
    var numb: NSString
    
    //Determine which number to add to
    var secondnumber = false
    
    //Used to determine which operation to use
    var operation:NSString
    
    //Prevent miultiple operators
    var opadded = false
    
    //Has a decimal been entered?
   var decimode = false
    
    //for when the whole thing is wiped
    let message = "Cleared"
    
    // Holder for the answer! 
    var anws : Double
    
    //To clear after successful operation
    var nxtprs = false
    
    //To handle negatives
    var isneg = false
    
//DIVIDER FOR ALL FUNCTIONS--------------------------------------------------
   
    //Adding a number into the string for number calculations
    func enternum (gotten: NSString){
        if secondnumber == true{
            numb = numb + gotten
        return numb
        }
        else{
        numa = numa + gotten
            return numa
        }
        
    }
    //Just to handle that pesky negative
    func updatenum (){
        if secondnumber == true{
            numb = "-" + numb
        isneg = false
        return numb}
        else{
        numa = "-" + numa
        isneg = false
        return numa}
    }
    
    
    
    func screenclear(){
        return "Next Number Please"}
    
    
    //To grab the command and change the number entering place
    
    func setop (gotop: NSString){
        operation = gotop
    seconnumber = true
        //Preventing any multiple operator errors.
        opadded = true
        screenclear()
        
        }
    
    //To clear the variables
    func clear() {
    numa = "0"
        numb = "0"
        anws = 0.0
        secondnumber = false
        return (message as NSString);

    }
    

    


func equalthis(){
    
    switch (operation) {
    
    case "*":
    anws = Double(numa) * Double(numb)
    return anws
        break
        
        case "/":
            anws = NSNumber(numa) / NSNumber(numb)
            return Double(anws)
        break

    case "+":
        anws = NSNumber(numa) + NSNumber(numb)
        return Double(anws)
        break
    
    case "-":
        anws = NSNumber(numa) - NSNumber(numb)
        return Double(anws)
        break
    }

}


//DIVIDER FOR CASE FLOW----------------------------------------------------
    
    switch (type){
    
    case 1:
        enternum(inpress)
        break
        
    case 2:
        setop(inpress)
        break
    
    case 3:
        if decimode == true{break}
        else
        {
        decimode = true
        enternum(inpress)
        break
        }
        
    case 4:
        clear()
        break
       
    case 5:
        equalthis()
        break
        
    case 6:
        isneg = true
        break
    
    
    
    }


    











*/

