//
//  DisplayNoteViewController.swift
//  Notes
//
//  Created by Mykhailo Bondarenko on 14.01.2020.
//  Copyright © 2020 Mykhailo Bondarenko. All rights reserved.
//

import UIKit

class DisplayNoteViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    


    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let identifier = segue.identifier else { return }

        switch identifier {
        case "save":
            print("save bar button item tapped")

        case "cancel":
            print("cancel bar button item tapped")

        default:
            print("unexpected segue identifier")
        }
    }


}
