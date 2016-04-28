//
//  EmailViewController.swift
//  Manners
//
//  Created by Krager, Andrew on 4/27/16.
//
//

import UIKit

class EmailViewController: UIViewController {

    @IBOutlet weak var emailTextField: UITextField!
    public var prefs = NSUserDefaults.standardUserDefaults()
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func changeEmail(sender: AnyObject) {
        prefs.setValue(emailTextField.text, forKey: "email")
    }

    @IBAction func backPressed(sender: AnyObject) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }

}
