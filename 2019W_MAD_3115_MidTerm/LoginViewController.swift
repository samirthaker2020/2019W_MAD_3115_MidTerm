//
//  ViewController.swift
//  2019W_MAD_3115_MidTerm
//
//  Created by MacStudent on 2019-03-19.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    var sd=UserDefaults.standard
    @IBOutlet weak var rememberme: UISwitch!
    
    @IBOutlet weak var txtpass: UITextField!
    @IBOutlet weak var txtuid: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        if let uid = sd.string(forKey: "uid")
        {
            txtuid.text = uid
           rememberme.isOn=true
        }
        if let pass = sd.string(forKey: "pass")
        {
            txtpass.text = pass
           rememberme.isOn=true
        }
            
      
    }

    @IBAction func btnlogin(_ sender: UIButton) {
        
        if  (txtuid.text=="samir" && txtpass.text=="123")
        {
            
            if(rememberme.isOn)
            {
                sd.set(txtuid.text, forKey: "uid")
                 sd.set(txtpass.text, forKey: "pass")
            }
            else{
                sd.removeObject(forKey: "uid")
                sd.removeObject(forKey: "pass")
            }
            let sp = UIStoryboard(name: "Main", bundle: nil)
            let LionVC = sp.instantiateViewController(withIdentifier: "studententry") as! StudentEntryViewController
            self.navigationController?.pushViewController(LionVC, animated: true)
        }
        else
        {
            let alert = UIAlertController(title: "Invalid", message: "Invalid Username and Password", preferredStyle: .alert)
            let actionDefault = UIAlertAction(title: "OK", style: .default, handler: nil)
            alert.addAction(actionDefault)
            self.present(alert, animated: true, completion: nil)
        }
        
        
        
    }
    
}

