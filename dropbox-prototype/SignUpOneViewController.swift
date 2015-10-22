//
//  SignUpOneViewController.swift
//  dropbox-prototype
//
//  Created by Andy Taylor on 10/20/15.
//  Copyright © 2015 Andy Taylor. All rights reserved.
//

import UIKit

class SignUpOneViewController: UIViewController {

    @IBOutlet weak var createButton: UIImageView!

    @IBOutlet weak var firstNameInput: UITextField!
    
    @IBOutlet weak var lastNameInput: UITextField!
    
    @IBOutlet weak var emailAddressInput: UITextField!
    
    @IBOutlet weak var passwordInput: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        createButton.alpha = 0
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func tapBackButton(sender: AnyObject) {
        navigationController!.popViewControllerAnimated(true)
    }

    @IBAction func passwordInputChanged(sender: AnyObject) {
        if firstNameInput != "" && lastNameInput != "" && emailAddressInput != "" && passwordInput != "" {
            createButton.alpha = 1
        }
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
