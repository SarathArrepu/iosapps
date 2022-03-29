//
//  ViewController.swift
//  Tableviewdemo
//
//  Created by Arrepu,Sarath on 3/29/22.
//

import UIKit

class Product{
    var productName : String?
    var productCategory : String?
    
    init(productName: String, productCategory: String){
        self.productCategory = productCategory
        self.productName = productName
    }
}

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return productsArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = tableviewOutlet.dequeueReusableCell(withIdentifier: "Reusuablecell", for: indexPath)
        
        cell.textLabel?.text = productsArray[indexPath.row].productName
        return cell
    }
  
    var productsArray = [Product]()

    @IBOutlet weak var tableviewOutlet: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableviewOutlet.delegate = self
        tableviewOutlet.dataSource = self
        
        let product1 = Product(productName: "MacBookAir", productCategory: "Laptop")
        productsArray.append(product1)
        let product2 = Product(productName: "Iphone", productCategory: "Mobile")
        productsArray.append(product2)
        let product3 = Product(productName: "Airpods", productCategory: "pods")
        productsArray.append(product3)
        let product4 = Product(productName: "Sweety", productCategory: "barre")
        productsArray.append(product4)
        let product5 = Product(productName: "rachu", productCategory: "bachu")
        productsArray.append(product5)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let transition = segue.identifier
        if transition == "detailSegue"{
            let destination = segue.destination as! DetailsViewController
            
            destination.product = productsArray[(tableviewOutlet.indexPathForSelectedRow?.row)!]
        }
        
    }

   
    
}

