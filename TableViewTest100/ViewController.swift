//
//  ViewController.swift
//  TableViewTest100
//
//  Created by Madhu on 21/04/20.
//  Copyright © 2020 Madhu. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource,UITableViewDelegate
{
    let numbers = ["1","2","3","4","5","6","7","8","9","10",
                   "11","12","13","14","15","16","17","18","19","20",
                   "21","22","23","24","25","26","27","28","29","30",
                   "31","32","33","34","35","36","37","38","39","40",
                   "41","42","43","44","45","46","47","48","49","50",
                   "51","52","53","54","55","56","57","58","59","60",
                   "61","62","63","64","65","66","67","68","69","70",
                   "71","72","73","74","75","76","77","78","79","80",
                   "81","82","83","84","85","86","87","88","89","90",
                   "91","92","93","94","95","96","97","98","99","100",]
    
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return numbers.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath)
        let row = indexPath.row
        cell.textLabel?.text = numbers[row]
        
        if (row == 98)
        {
            cell.backgroundColor = .cyan
        }
        if (row == 99)
        {
            cell.backgroundColor = .systemOrange
        }
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50
    }
    
    
    @IBOutlet weak var tableView: UITableView!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate    = self
        tableView.dataSource  = self
        // Do any additional setup after loading the view.
    }
    
    
}

