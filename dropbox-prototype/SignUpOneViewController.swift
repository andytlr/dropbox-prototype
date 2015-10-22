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
        firstNameInput.becomeFirstResponder()
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
    
    @IBAction func tapCreateAccount(sender: AnyObject) {
        let alertController = UIAlertController(title: nil, message: "Before you can complete your registration, you must accept the Dropbox Terms of Service.", preferredStyle: .ActionSheet)
        
        let forgotPasswordAction = UIAlertAction(title: "I Agree", style: .Default) { (action) in
            self.performSegueWithIdentifier("agreeToTermsLogIn", sender: self)
        }
        alertController.addAction(forgotPasswordAction)
        
        let singleSignOnAction = UIAlertAction(title: "View Terms", style: .Default) { (action) in
            self.performSegueWithIdentifier("showTermsModal", sender: self)
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
