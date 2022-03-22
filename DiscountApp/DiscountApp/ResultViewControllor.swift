//
//  ResultViewControllorViewController.swift
//  DiscountApp
//
//  Created by Arrepu,Sarath on 3/22/22.
//

import UIKit

class ResultViewControllor: UIViewController {

    @IBOutlet weak var EnterAmountoutlet: UILabel!
    
    @IBOutlet weak var DiscountAmountoutlet: UILabel!
    
    @IBOutlet weak var pricediscountoutlet: UILabel!
    
    
    var Amount = ""
    var discrate = ""
    var priceafterdiscount = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        EnterAmountoutlet.text! = EnterAmountoutlet.text! + Amount
        DiscountAmountoutlet.text! = DiscountAmountoutlet.text! + discrate
        pricediscountoutlet.text! = pricediscountoutlet.text! + priceafterdiscount
    
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
