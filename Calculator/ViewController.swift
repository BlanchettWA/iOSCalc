//
//  ViewController.swift
//  Calculator
//
//  Created by William Blanchett on 2/10/15.
//  Copyright (c) 2015 Liam at TestApp. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  var program : model01 = model01()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBOutlet var disp: UILabel!

    @IBAction func Button1(sender: AnyObject) {disp.text = program.addnum("1")}
   
    @IBAction func Button2(sender: AnyObject) {disp.text = program.addnum("2")}
    
    @IBAction func B3(sender: AnyObject) {disp.text = program.addnum("3")}
    
    @IBAction func B4(sender: AnyObject) {disp.text = program.addnum("4")}
    
    @IBAction func B5(sender: AnyObject) {disp.text = program.addnum("5")}
    
    @IBAction func B6(sender: AnyObject) {disp.text = program.addnum("6")}
    
    @IBAction func B7(sender: AnyObject) {disp.text = program.addnum("7")}
    
    @IBAction func B8(sender: AnyObject) {disp.text = program.addnum("8")}
    
    @IBAction func B9(sender: AnyObject) {disp.text = program.addnum("9")}
    
    @IBAction func Plus(sender: AnyObject) {disp.text = program.setsolve(1)}
 
    @IBAction func B0(sender: AnyObject) {disp.text = program.addnum("0")}
    
    @IBAction func buttonequals(sender: AnyObject) {disp.text = program.solve()}
    
    @IBAction func Buttonsubtract(sender: AnyObject) {disp.text = program.setsolve(2)}
    
    @IBAction func ButtonDivide(sender: AnyObject) {disp.text = program.setsolve(4)}
    
    @IBAction func ButtonMultiply(sender: AnyObject) {disp.text = program.setsolve(3)}
    
    @IBAction func ButtonClear(sender: AnyObject) {disp.text = program.clearall()}
    
    @IBAction func ButtonNegative(sender: AnyObject) {disp.text = program.makenegative()}
    
    @IBAction func ButtonDecimal(sender: AnyObject) {program.deci(".")
    disp.text = program.getnum()}
    

    
    
    
}

