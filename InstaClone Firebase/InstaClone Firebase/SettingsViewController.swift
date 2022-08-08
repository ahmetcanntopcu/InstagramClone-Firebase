//
//  SettingsViewController.swift
//  InstaClone Firebase
//
//  Created by Ahmet Can Topcu on 31.07.2022.
//

import UIKit
import Firebase

class SettingsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    @IBAction func logoutClicked(_ sender: Any) {
        
        do {
            try Auth.auth().signOut()
            self.performSegue(withIdentifier: "toFirstViewController", sender: nil)
        } catch {
            print(error.localizedDescription)
        }
        
    }
    
}
