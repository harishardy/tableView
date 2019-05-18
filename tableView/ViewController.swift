//
//  ViewController.swift
//  tableView
//
//  Created by Harish Hardy on 18/05/19.
//  Copyright © 2019 iosdev. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    let listX = ["China","Antartica","Europe","Africa","Pakistan","Australia","India","Korea","Singapore","Saudi Arabia","Malasyia","Denmark","Mexico","Canada","Iceland","Bulgaria","London","Iraq","France","Afganistan","Algeria","Sri Lanka","New Zealand","Maldives","Zambia","Italy","Belgium","Hungary","Bhutan","Libya","Egypt","Myanmar","Austria"]
    
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listX.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellX = UITableViewCell(style: UITableViewCell.CellStyle.default, reuseIdentifier: "cellX")
        cellX.textLabel?.text = listX[indexPath.row]
        return cellX
    }
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

