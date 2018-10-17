//
//  ViewController.swift
//  TableViewDemo
//
//  Created by Mostafa on 7/16/17.
//  Copyright © 2017 Mostafa. All rights reserved.
//

import UIKit

class ViewController: UIViewController ,UITableViewDataSource ,UITableViewDelegate {

    var viewCellData = [
     ["name":"asd1","age":"45","image":"01"] ,["name":"asd2","age":"30","image":"08"]
    ,["name":"asd3","age":"42","image":"02"] ,["name":"asd4","age":"28","image":"13"]
    ,["name":"asd5","age":"35","image":"03"] ,["name":"asd6","age":"22","image":"12"]
    ,["name":"asd7","age":"30","image":"04"] ,["name":"asd8","age":"20","image":"11"]
    ,["name":"asd9","age":"45","image":"05"] ,["name":"asd10","age":"27","image":"10"]
    ,["name":"asd11","age":"45","image":"06"],["name":"asd12","age":"26","image":"09"]
    ,["name":"asd13","age":"45","image":"07"],["name":"asd14","age":"25","image":"14"]
    ,["name":"asd15","age":"18","image":"15"],["name":"asd16","age":"24","image":"16"] ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return self.viewCellData.count / 2
        }else{
           return self.viewCellData.count / 2
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as UITableViewCell
        if indexPath.section == 0 {
            cell.textLabel?.text = self.viewCellData[indexPath.row]["name"]
            cell.detailTextLabel?.text = self.viewCellData[indexPath.row]["age"]
            cell.imageView?.image = UIImage(named: self.viewCellData[indexPath.row]["image"]!)
        }else{
            cell.textLabel?.text = self.viewCellData[indexPath.row + 8]["name"]
            cell.detailTextLabel?.text = self.viewCellData[indexPath.row + 8]["age"]
            cell.imageView?.image = UIImage(named: self.viewCellData[indexPath.row + 8]["image"]!)
        }
        return cell
    }
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {

        if section == 0 {
            return "Section 1 in Table View"
        }else{
            return "Section 2 in Table View"
        }
    }
}

