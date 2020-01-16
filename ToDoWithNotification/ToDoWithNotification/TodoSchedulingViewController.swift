//
//  TodoSchedulingViewController.swift
//  ToDoWithNotification
//
//  Created by Mykhailo Bondarenko on 16.01.2020.
//  Copyright © 2020 Mykhailo Bondarenko. All rights reserved.
//

import UIKit

class TodoSchedulingViewController: UIViewController {

    @IBOutlet weak var titleField: UITextField!
    @IBOutlet weak var deadlinePicker: UIDatePicker!
    
    override func viewDidLoad() {
        super.viewDidLoad()

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
    
    @IBAction func savePressed(_ sender: UIButton) {
    }

}
