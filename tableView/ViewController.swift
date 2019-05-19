//
//  ViewController.swift
//  tableView
//
//  Created by Harish Hardy on 18/05/19.
//  Copyright © 2019 iosdev. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    
    let sectionX =  ["A","B","C","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z"]
    
    let listX = ["China","Antartica","Europe","Africa","Pakistan","Australia","India","Korea","Singapore","Saudi Arabia","Malasyia","Denmark","Mexico","Canada","Iceland","Bulgaria","London","Iraq","France","Afganistan","Algeria","Sri Lanka","New Zealand","Maldives","Zambia","Italy","Belgium","Hungary","Bhutan","Libya","Egypt","Myanmar","Austria"]
    
    
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int{
        
        return sectionX.count
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       
        return listX.count
    }
    
    

    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cellX = tableView.dequeueReusableCell(withIdentifier: "firstCell", for: indexPath)
        cellX.textLabel?.text = listX[indexPath.row]
        return cellX
    }
    
    
   
    
    func tableView(_ tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int)
    {
        let headerX = view as! UITableViewHeaderFooterView
        headerX.textLabel?.textColor = UIColor.black
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
    {
        print(listX[indexPath.row])
        
        let alertControllerX = UIAlertController(title: "Country Name", message:
            listX[indexPath.row], preferredStyle: .alert)
        alertControllerX.addAction(UIAlertAction(title: "Dismiss", style: .default))
        
        self.present(alertControllerX, animated: true, completion: nil)
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

