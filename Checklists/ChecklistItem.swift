//
//  ChecklistItem.swift
//  Checklists
//
//  Created by Lam Tat Cheong on 03/09/2016.
//  Copyright © 2016 PenguinTech. All rights reserved.
//

import Foundation

class ChecklistItem: NSObject, NSCoding {
    var text = ""
    var checked = false

    override init(){
        super.init()
    }
    
func toggleChecked() {
    checked = !checked
    }

func encode(with aCoder: NSCoder){
    aCoder.encode(text, forKey: "Text")
    aCoder.encode(checked, forKey: "Checked")
}
    required init?(coder aDecoder: NSCoder){
        text = aDecoder.decodeObject(forKey: "Text") as! String
        checked = aDecoder.decodeBool(forKey: "Checked")
        super.init()
    }
    
}
