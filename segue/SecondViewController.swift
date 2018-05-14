//
//  SecondViewController.swift
//  segue
//
//  Created by Hongbo Niu on 2018-05-14.
//  Copyright © 2018 Hongbo Niu. All rights reserved.
//

import UIKit
protocol passDataBack {
    func passData(data:String)
}

class SecondViewController: UIViewController {
    var delegate : passDataBack?

    @IBOutlet weak var textfield: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }


    
    @IBAction func backBtnPressed(_ sender: Any) {
            let newItem = textfield!
        delegate?.passData(data: newItem.text!)
        dismiss(animated: true, completion: nil)
    }
    


}
