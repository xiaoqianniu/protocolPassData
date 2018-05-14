//
//  ViewController.swift
//  segue
//
//  Created by Hongbo Niu on 2018-05-14.
//  Copyright © 2018 Hongbo Niu. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource, passDataBack{
    
    
    @IBOutlet weak var tableView: UITableView!
    
    @IBOutlet weak var label: UILabel!
    
    var array = ["1","2","3"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = array[indexPath.row]
        tableView.reloadData()
        return cell
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        print(array.count)
        return array.count
        
    }
  

    @IBAction func buttontapped(_ sender: Any) {
        performSegue(withIdentifier: "goToSecond", sender: self)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToSecond"{
        let destinationVC = segue.destination as! SecondViewController
            destinationVC.delegate = self
        
        }
    }
    func passData(data: String) {
       array.append(data)
        print(array)
        
    }
    
}

