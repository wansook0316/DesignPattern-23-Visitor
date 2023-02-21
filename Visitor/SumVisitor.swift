//
//  SumVisitor.swift
//  Visitor
//
//  Created by Choiwansik on 2023/02/21.
//

import Foundation

internal class SumVisitor: Visitor {

    internal var value: Int {
        self.sum
    }

    internal func visit(unit: Unit) {
        if let item = unit as? Item {
            sum += item.value
        } else {
            unit.accept(visitor: self)
        }
    }

    private(set) var sum: Int = .zero

}
