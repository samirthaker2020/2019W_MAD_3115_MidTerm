//
//  Student.swift
//  2019W_MAD_3115_MidTerm
//
//  Created by MacStudent on 2019-03-19.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import Foundation


class Student {
    var sid:String
    var sname:String
    var gender:String
    var bdate:String
    var marks:[Float]
    var course:String
    init() {
        self.sid=String()
self.sname=String()
        self.gender=String()
        self.bdate=String()
        self.bdate=String()
        self.marks=[]
        self.course=String()
    }
    
    init(sid:String,sname:String,gen:String,bdate:String,corse1:String,marks:Array<Float>) {
        self.sid=sid
        self.sname=sname
        self.gender=gen
        self.bdate=bdate
        self.marks=marks
        self.course=corse1
    }
    
    
    func displaydata()
    {
        print(sid)
        print(sname)
        print(gender)
        print(bdate)
        for i in marks
        {
            print(i)
        }
    }
    
}
