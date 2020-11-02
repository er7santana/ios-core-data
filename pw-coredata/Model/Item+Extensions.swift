//
//  Item+Extensions.swift
//  pw-coredata
//
//  Created by Eliezer Sant Ana on 02/11/20.
//

import Foundation
import CoreData

extension Item {
    public override func awakeFromInsert() {
        super.awakeFromInsert()
        
        id = UUID.init().uuidString
        creationDate = Date()
    }
}
