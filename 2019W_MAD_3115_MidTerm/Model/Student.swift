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
    var m1,m2,m3,m4,m5:Float
    var course:String
    init() {
        self.sid=String()
self.sname=String()
        self.gender=String()
        self.bdate=String()
        self.bdate=String()
        
        self.course=String()
        self.m1=Float()
        self.m2=Float()
        self.m3=Float()
        self.m4=Float()
        self.m5=Float()
    }
    
    init(sid:String,sname:String,gen:String,bdate:String,corse1:String,m1:Float,m2:Float,m3:Float,m4:Float,m5:Float) {
        self.sid=sid
        self.sname=sname
        self.gender=gen
        self.bdate=bdate
        self.m1=m1
          self.m2=m2
          self.m3=m3
          self.m4=m4
        self.m5=m5
        self.course=corse1
    }
    
    
    
  
    
}
