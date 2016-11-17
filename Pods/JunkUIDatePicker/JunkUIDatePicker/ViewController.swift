//
//  ViewController.swift
//  JunkUIDatePicker
//
//  Created by Pathfinder on 8/18/16.
//  Copyright © 2016 MariZack Consulting. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var datePicker: UIDatePicker!
    @IBOutlet weak var dateAMPMLbl: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func datePickerChanged(_ sender: UIDatePicker) {
        let dateFormatter = DateFormatter()
        let amFormatter = DateFormatter()
        amFormatter.dateFormat = "a"
        dateFormatter.dateFormat = "hh:mm"
        
        let date = dateFormatter.string(from: sender.date)
        let am = amFormatter.string(from: sender.date)
        self.dateLabel.text = date
        self.dateAMPMLbl.text = am
    }

    @IBAction func save(_ sender: AnyObject) {
        print("Save")
    }
}

