//
//  ViewController.swift
//  Mycalc3
//
//  Created by Takehana Yukinobu on 2017/01/23.
//  Copyright © 2017年 Takehana Yukinobu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

//  var initFlag = true
//  var mem:Int = 0
  var resultNum:Int = 0
  var mem1:Int = 0
  var mem2:Int = 0
  var operand:String = ""
  @IBOutlet weak var result: UILabel!
  @IBAction func number(_ sender: UIButton) {
    inputNum(currentTitle:sender.currentTitle!)
        }
  
  func inputNum(currentTitle:String){
    mem1 = mem1 * 10 + Int(currentTitle)!
    result.text = String(mem1)
  }
  
  
  @IBAction func operand(_ sender: UIButton) {
    if sender.currentTitle! == "C"{
    resultNum = 0
    mem1 = 0
    mem2 = 0
    result.text = String(resultNum)
    }
    else if operand == "=" {
      mem2 = resultNum
      mem1 = 0
      operand = sender.currentTitle!
    }
    else{
    mem2 = mem1
    mem1 = 0
    operand = sender.currentTitle!
    }
  }
  
  @IBAction func equall(_ sender: UIButton) {
    print("mem1 = \(mem1)")
    print("mem2 = \(mem2)")
    print("result = \(resultNum)")
    switch (operand) {
    case "+": resultNum = mem2 + mem1
    case "-": resultNum = mem2 - mem1
    case "×": resultNum = mem2 * mem1
    case "÷":
      if (mem1 != 0 ){resultNum = mem2 / mem1}
      else {result.text = "error"}
    default:  print("error")
    }
    operand = "="
    result.text = String(resultNum)
  }
  
  override func viewDidLoad() {
    super.viewDidLoad()
    result.text = String(resultNum)

    // Do any additional setup after loading the view, typically from a nib.
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }


}

