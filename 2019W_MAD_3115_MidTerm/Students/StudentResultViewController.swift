//
//  StudentResultViewController.swift
//  2019W_MAD_3115_MidTerm
//
//  Created by MacStudent on 2019-03-19.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import UIKit

class StudentResultViewController: UIViewController {
    var sid:String?
    var sname:String?
    var gender1:String?
    var bdate1:String?
    var course1:String?
    var marks1=[Float]()
    var email:String?
    var m1,m2,m3,m4,m5:Float?
    @IBOutlet weak var obdate: UILabel!
    @IBOutlet weak var oid: UILabel!
    
    @IBOutlet weak var oname: UILabel!
    
    @IBOutlet weak var ogender: UILabel!
    
    @IBOutlet weak var ocourse: UILabel!
    
    @IBOutlet weak var oemail: UILabel!
    
    @IBOutlet weak var om1: UILabel!
    
    @IBOutlet weak var om3: UILabel!
    
    @IBOutlet weak var om2: UILabel!
    
    @IBOutlet weak var ograde: UILabel!
    @IBOutlet weak var opercent: UILabel!
    @IBOutlet weak var ototal: UILabel!
    @IBOutlet weak var om5: UILabel!
    var tot:Float?
    var per:Float?
    @IBOutlet weak var om4: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        if  let e1=sid
        {
            oid.text=e1
        }
        if  let e2=sname
        {
            oname.text=e2
        }
        if  let e3=gender1
        {
            ogender.text=e3
        }
        if  let e4=bdate1
        {
            obdate.text=e4
        }
        if  let e5=course1
        {
            ocourse.text=e5
        }
        if  let e6=email
        {
            om1.text=e6
        }
        
        if  let e7=m1
        {
            om1.text=String(e7)
        }
        if  let e8=m2
        {
            om1.text=String(e8)
        }
        tot=m1! + m2!+m3!+m4!+m5!
        per=tot!/5
        ototal.text=String(tot!)
        opercent.text=String(per!)
        // Do any additional setup after loading the view.
    }
    
   
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


