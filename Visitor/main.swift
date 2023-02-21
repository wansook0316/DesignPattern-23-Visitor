//
//  main.swift
//  Visitor
//
//  Created by Choiwansik on 2023/02/21.
//

import Foundation

internal func main() {
    let list1 = ItemList()
    list1.add(unit: Item(value: 10))
    list1.add(unit: Item(value: 20))
    list1.add(unit: Item(value: 30))

    let list2 = ItemList()
    list2.add(unit: Item(value: 40))
    list2.add(unit: Item(value: 50))
    list2.add(unit: list1)

    let list3 = ItemList()
    list3.add(unit: Item(value: 60))
    list3.add(unit: list1)
    list3.add(unit: list2)

    let sum = SumVisitor()
    let avg = AvgVisitor()

    list1.accept(visitor: sum)
    list1.accept(visitor: avg)
    print("List1 SUM: \(sum.value)")
    print("List1 AVG: \(avg.value)")

    list2.accept(visitor: sum)
    list2.accept(visitor: avg)
    print("List2 SUM: \(sum.value)")
    print("List2 AVG: \(avg.value)")

    list3.accept(visitor: sum)
    list3.accept(visitor: avg)
    print("List3 SUM: \(sum.value)")
    print("List3 AVG: \(avg.value)")

}

main()

