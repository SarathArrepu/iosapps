//
//  ViewController.swift
//  ContactListApp
//
//  Created by Arrepu,Sarath on 4/19/22.
//

import UIKit
import Firebase

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contactNames.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Contactcell", for: indexPath)
        cell.textLabel?.text = contactNames[indexPath.row]
        return cell
    }
    

    @IBOutlet weak var tableviewoutlet: UITableView!
    var contactNames : [String] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableviewoutlet.delegate = self
        tableviewoutlet.dataSource = self
        fetchData()
    }

    func fetchData()
    {
        let databaseRef = Database.database().reference()
        
        databaseRef.observeSingleEvent(of: .value) { snapshot in
            let contacts = snapshot.value as! NSDictionary
            self.contactNames = contacts.allKeys as! [String]
            
            //relaod data
            self.tableviewoutlet.reloadData();
        }
    }
}

