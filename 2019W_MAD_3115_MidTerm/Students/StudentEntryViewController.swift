//
//  StudentEntryViewController.swift
//  2019W_MAD_3115_MidTerm
//
//  Created by MacStudent on 2019-03-19.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import UIKit

class StudentEntryViewController: UIViewController,UIPickerViewDelegate,UIPickerViewDataSource {
  
    
    var gender:String?
    @IBOutlet weak var txtid: UITextField!
    var bdate1:String=""
    @IBOutlet weak var txtname: UITextField!
    var cname:String=""
    @IBOutlet weak var m1: UITextField!
    var coursedetail=["MADT", "MODT", "CSD", "WADT"]
    @IBOutlet weak var m5: UITextField!
    @IBOutlet weak var m4: UITextField!
    @IBOutlet weak var m3: UITextField!
    @IBOutlet weak var m2: UITextField!
    @IBOutlet weak var txtemail: UITextField!
    var m=[Float]
    override func viewDidLoad() {
        super.viewDidLoad()
let s=Student()
        // Do any additional setup after loading the view.
    }
    

    @IBAction func grnder(_ sender: UISegmentedControl) {
        gender=String(sender.selectedSegmentIndex)
    }
    @IBAction func bdate(_ sender: UIDatePicker) {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd-MM-YYYY"
        let strDate = dateFormatter.string(from: sender.date)
        bdate1=strDate
        
    }
    
    @IBOutlet weak var course: UIPickerView!
    
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 2
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
       if component==0
       {
       
       }else{ return self.coursedetail.count}
        return 0
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if component==1
        {
            return coursedetail[row]
        }
        return "NIl"
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if pickerView==course
        {
            course=self.course[course.selectedRow(inComponent: 1)]!
        }
    }
    @IBAction func calculate(_ sender: Any) {
        m.append(m1.text)
        m.append(m1.text)
        m.append(m1.text)
        m.append(m1.text)
        m.append(m1.text)
        let s1=Student(sid:txtid.text!,sname:txtname.text!,gen:gender,bdate:bdate1,marks:Array<Float>)
        
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
