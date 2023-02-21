//
//  Unit.swift
//  Visitor
//
//  Created by Choiwansik on 2023/02/21.
//

import Foundation

internal protocol Unit {

    func accept(visitor: Visitor)
    
}
