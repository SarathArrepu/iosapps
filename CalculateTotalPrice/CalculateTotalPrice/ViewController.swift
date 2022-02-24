//
//  ViewController.swift
//  CalculateTotalPrice
//
//  Created by Arrepu,Sarath on 2/24/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var prod1: UITextField!
    @IBOutlet weak var price1: UITextField!
    @IBOutlet weak var prod2: UITextField!
    @IBOutlet weak var price2: UITextField!
    
    @IBOutlet weak var Displaylabel: UILabel!
    
    @IBOutlet weak var Displaylabel2: UILabel!
    @IBOutlet weak var Displaylabel3: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func Recipt(_ sender: UIButton) {
        var am = Int(price1.text!)!
        var dis = Int(price2.text!)!
        var disc1 = Double(25)
        var tax = Double(8.5)
       
        var d = Double(am + dis)
        var disco = Double(d * disc1)/100
        var f = Double(d - disco)
        var tax1 = Double(f * tax)/100
        var tot = Double(f + tax1)
        var round = Double(round(100 * tot) / 100)
        Displaylabel.text! = "\(prod1.text!) : \(am)"
        Displaylabel2.text! = "\(prod2.text!) : \(dis)"
        Displaylabel3.text! = "Total price after tax and discount: \(round)"
    }
    
}

