//
//  SignInOneViewController.swift
//  dropbox-prototype
//
//  Created by Andy Taylor on 10/21/15.
//  Copyright © 2015 Andy Taylor. All rights reserved.
//

import UIKit

class SignInOneViewController: UIViewController {

    @IBOutlet weak var emailInput: UITextField!
    
    @IBOutlet weak var passwordInput: UITextField!
    
    @IBOutlet weak var signInActiveOverlay: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        emailInput.becomeFirstResponder()
        signInActiveOverlay.alpha = 0
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func tapBackButton(sender: AnyObject) {
        navigationController!.popViewControllerAnimated(true)
    }

    @IBAction func passwordFieldChanged(sender: AnyObject) {
        if passwordInput.text != "" && emailInput.text != "" {
            signInActiveOverlay.alpha = 1
        }
    }
    
    @IBAction func tapHavingTroubleButton(sender: AnyObject) {
        let alertController = UIAlertController(title: nil, message: nil, preferredStyle: .ActionSheet)
        
        let cancelAction = UIAlertAction(title: "Cancel", style: .Cancel) { (action) in
            // ...
        }
        alertController.addAction(cancelAction)
        
        let forgotPasswordAction = UIAlertAction(title: "Forgot Password?", style: .Default) { (action) in
            // ...
        }
        alertController.addAction(forgotPasswordAction)
        
        let singleSignOnAction = UIAlertAction(title: "Single Sign-On", style: .Default) { (action) in
            // ...
        }
        alertController.addAction(singleSignOnAction)
        
        self.presentViewController(alertController, animated: true) {
            // ...
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
