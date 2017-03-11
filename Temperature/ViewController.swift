//
//  ViewController.swift
//  Temperature
//
//  Created by Nokhwal,Sahil on 2/5/16.
//  Copyright © 2016 Nokhwal,Sahil. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
   // var tempCelsius:Double
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func btnFC(sender: UIButton) {
        
        let input:Double? =  Double(textF.text!)
        
        if input != nil {
            
            textC.text =  String(fahrenheitToCelsius(input!))
            self.view.backgroundColor = colorForTempearture(fahrenheitToCelsius(input!))
            
            headerLB.text = "B👻arc🤖temperatureC😼nverter 👁"
            //self.view.backgroundColor = UIColor.whiteColor()
        
        }else{
             errorLB1.text = "Error"
        }
        
    }

    @IBAction func btnCF(sender: UIButton) {
    
        
        
        
        let input:Double? =  Double(textC.text!)
        
        if input != nil {
    
            
          self.view.backgroundColor = colorForTempearture(input!)
            
            textF.text =  String(celsiusToFahrenheit(input!))
            headerLB.text = "B💩arc👽temperatureC🐤nverter 😈"
           // self.view.backgroundColor = UIColor.whiteColor()
            
        }else {
            errorLB.text = "Error"
        }
    
    }
    

    
    @IBOutlet weak var errorLB1: UILabel!
    
    
    @IBOutlet weak var errorLB: UILabel!
    
    
    @IBOutlet weak var headerLB: UILabel!
   
    @IBOutlet weak var textF: UITextField!
    
    @IBOutlet weak var textC: UITextField!
    
    func  colorForTempearture(tempCelsius:Double) -> UIColor{
        if tempCelsius < 0 {
            
            return UIColor.blueColor()
        }
        else if tempCelsius >= 0   && tempCelsius <  20 {
            return UIColor.lightGrayColor()
        }
        else if tempCelsius >= 20 && tempCelsius < 30 {
            return UIColor.greenColor()
        }
        else if tempCelsius >= 30 && tempCelsius < 40  {
           return UIColor.redColor()
        }
        
        else if tempCelsius >= 40  {
             return UIColor.yellowColor()
        }
    return UIColor.grayColor()
}

    func celsiusToFahrenheit(tempCelsius:Double) -> Double{
        return   (tempCelsius *  9/5) + 32
}


    func fahrenheitToCelsius(tempFahrenheit:Double) -> Double{
        return   (tempFahrenheit  -  32)  *  5/9
}

}