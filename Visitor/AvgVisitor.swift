//
//  AvgVisitor.swift
//  Visitor
//
//  Created by Choiwansik on 2023/02/21.
//

import Foundation

internal class AvgVisitor: Visitor {

    internal var value: Double {
        Double(self.sum) / Double(self.count)
    }

    internal func visit(unit: Unit) {
        if let item = unit as? Item {
            self.sum += item.value
            self.count += 1
        } else {
            unit.accept(visitor: self)
        }
    }

    private(set) var sum = 0
    private(set) var count = 0
}
