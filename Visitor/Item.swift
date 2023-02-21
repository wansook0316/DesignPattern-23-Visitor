//
//  Item.swift
//  Visitor
//
//  Created by Choiwansik on 2023/02/21.
//

import Foundation

internal struct Item: Unit {

    internal let value: Int

    internal func accept(visitor: Visitor) {
        visitor.visit(unit: self)
    }
    
}
