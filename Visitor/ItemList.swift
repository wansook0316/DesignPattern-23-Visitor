//
//  ItemList.swift
//  Visitor
//
//  Created by Choiwansik on 2023/02/21.
//

import Foundation

internal class ItemList: Unit {

    internal func add(unit: Unit) {
        self.list.append(unit)
    }

    internal func accept(visitor: Visitor) {
        self.list.forEach { visitor.visit(unit: $0) }
    }

    private(set) var list = Array<Unit>()

}
