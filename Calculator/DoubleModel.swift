//
//  DoubleModel.swift
//  Calculator
//
//  Created by wblanchett15 on 2/16/15.
//  Copyright (c) 2015 Liam at TestApp. All rights reserved.
//  Version 1.0 finished on 

import Foundation

class model01{
    
    // First number to operate on, as well as a temporary double to make negative, as well as a negative flag
    var num1 : String = ""
    var temp1 : Double = 0.0
    var is1n = false

    //Second Number to operate on, as well as a temporary double to make negative, as well as a negative flag
    var num2 : String = ""
    var temp2 : Double = 0.0
    var is2n = false
    
    //are we filling in the first or second number?
    var secondnumber = false
    
    //gotta keep that answer somewhere
    var answer: Double = 0.0
    
    //Did they just solve something and need to clear on next press?
    var clearnext = false
    
    //What are we solving? 1 = +, 2 = -, 3 = *, 4 = /
    var solvecase = 0
    
    //Flag for keeping users from adding too many decimals
    var addec = false;
    
    //Flag for keeping the users from adding too many operators.
    var adOp = false
    
          //Function to just export the number. It may or may not be used, but its good to have
    func getnum() -> String{if secondnumber == true{return num2} else{return num1}}

    //When the clear button is pressed, initializes EVERYTHING
    func clearall() -> String{
            num1 = ""
            num2 = ""
            temp1 = 0.0
            temp2 = 0.0
            is1n = false
            is2n = false
            secondnumber = false
            answer = 0.0
            clearnext = false
            solvecase = 0
        adOp = false
        addec = false
        return "Cleared!"
        }

    //Function to keep decimals in check and working right
    func deci(pass : String){
        if addec == false{
        addec = true
        addnum(pass)
        }
    }
    
        
    //Function to add numbers into the storage string
    func addnum(toadd: String) -> String{
      
        //checks if an answer was just calculated. If it was, then this clears it
        if clearnext == true{
        num1 = ""
        num2 = ""
            temp1 = 0.0
            temp2 = 0.0
            is1n = false
            is2n = false
            secondnumber = false
            answer = 0.0
            clearnext = false
            solvecase = 0
            adOp = false
            addec = false
        }
        
        //Checks to see if to add to the second number...
        if secondnumber == true{
        num2 = num2 + toadd
        if is2n == true {return "-" + num2}else{return num2}}
            //...or the first number
        else {
        num1 = num1 + toadd
            if is1n == true {return "-" + num1}else{return num1}
        }
    }
    
    // Sets the operator to be used, and clears the variables
    func setsolve(op:Int) -> String{
        if clearnext == true{
            num1 = ""
            num2 = ""
            temp1 = 0.0
            temp2 = 0.0
            is1n = false
            is2n = false
            answer = 0.0
            addec = false
            return "Input Numbers"}
        else{
            
        
        if adOp == false && secondnumber == false {
        adOp = true
        solvecase = op
    secondnumber = true
        
        switch (op){
        case 1:
        return "+"
        
        case 2:
        return "-"
        
        case 3:
        return"*"
        
        case 4:
        return "/"
        
        default:
        return "Error..."
            }
        } else{return num2}
    
        }
    }
    //Solves the answer
    func solve() -> String{
        if secondnumber == true && clearnext == false{
            if num2 == "" {return "Input 2nd Number"}else{
        switch solvecase{
        case 1:
            if is1n == true{temp1 = -1 * (num1 as NSString).doubleValue}
            else{temp1 = (num1 as NSString).doubleValue}
            if is2n == true{temp2 = -1 * (num2 as NSString).doubleValue}
            else{temp2 = (num2 as NSString).doubleValue}
            answer = temp1 + temp2
            clearnext = true
            return "\(answer)"
        
        case 2:
                if is1n == true{temp1 = -1 * (num1 as NSString).doubleValue}
                else{temp1 = (num1 as NSString).doubleValue}
                if is2n == true{temp2 = -1 * (num2 as NSString).doubleValue}
                else{temp2 = (num2 as NSString).doubleValue}
                answer = temp1 - temp2
                clearnext = true
                return "\(answer)"
                
        case 3:
                if is1n == true{temp1 = -1 * (num1 as NSString).doubleValue}
                else{temp1 = (num1 as NSString).doubleValue}
                if is2n == true{temp2 = -1 * (num2 as NSString).doubleValue}
                else{temp2 = (num2 as NSString).doubleValue}
                answer = temp1 * temp2
                clearnext = true
                return "\(answer)"
                
        case 4:
            if num2 == "0" {
                clearnext = true
                return "Undefined"
            
            }else{
            if is1n == true{temp1 = -1 * (num1 as NSString).doubleValue}
                    else{temp1 = (num1 as NSString).doubleValue}
                    if is2n == true{temp2 = -1 * (num2 as NSString).doubleValue}
                    else{temp2 = (num2 as NSString).doubleValue}
                    answer = temp1 / temp2
                    clearnext = true
                return "\(answer)"}
        default:
            clearnext = true
            return "Error..."
                }
            }
            
            }
        
        else{return "Input 2nd Number"}
        
    }
    //This is the negative toggle
    func makenegative() -> String{
      //This clears the variables if a calculation was just done
        if clearnext == true{
            num1 = ""
            num2 = ""
            temp1 = 0.0
            temp2 = 0.0
            is1n = false
            is2n = false
            secondnumber = false
            answer = 0.0
            clearnext = false
            solvecase = 0
            adOp = false
            addec = false
        }
        
        if secondnumber == true{
            
            if is2n == false {
                is2n = true
            return "-" + num2}
                
            else {is2n = false
            return num2}
    
        }
            
        else {  if is1n == false {is1n = true
        return "-" + num1}
        else {is1n = false
            return num1}}
    }
}