//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

class Node{
    
    var value : Int
    var next : Node?
    
    init(value : Int, next : Node?) {
        self.value = value
        self.next = next
    }
}

let thirdNode = Node(value: 3, next: nil)
let secondNode = Node(value: 2, next: thirdNode)
let firstNode = Node(value: 1, next: secondNode)
// 1->2->3->nil
func printNodeList(head : Node?){
    var currentNode = head
    while currentNode != nil {
        print(currentNode?.value ?? -1)
        currentNode = currentNode?.next
    }
}

// 1->2->3->nil
// nil<-1->2->3->nil
// nil<-1<-2->3->nil
// nil<-1<-2<-3

// nil<-1<-2<-3
// 3->2->1->nil

func reversedLinkedList(head : Node?) -> Node?{
    var currentNode = head
    var previous : Node?
    var next : Node?
    
    while currentNode != nil {
        next = currentNode?.next
        currentNode?.next = previous
        previous = currentNode
        currentNode = next
        
    }
    return previous
}

let myReversedList =  reversedLinkedList(head: firstNode)
printNodeList(head:myReversedList)

