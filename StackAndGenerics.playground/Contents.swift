//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

struct User{
    var name : String
    let userName : String
}

var user1 = User(name: "Vasudha", userName: "Jags")
var user2 = User(name: "Jim", userName: "Hello")

class Node<T>{
    var value : T
    var next : Node<T>?
    //let previous : Node?
    init(value : T) {
        self.value = value
    }
}

class Stack<T>{
    
    var top : Node<T>?
    func push(_value : T){
        let oldTop = top
        top = Node(value: _value)
        top?.next = oldTop
        print("Old top value is :", oldTop?.value ?? nil)
        print("Top next value is :", top?.next?.value ?? nil)
    }
    func pop() -> T?{
        return top?.value
    }
    
    func peek() -> T?{
        return top?.value
    }
}

let stack = Stack<User>()
stack.push(_value: user1)
stack.push(_value: user2)
stack.pop()
stack.peek()

let stack1 = Stack<Int>()
stack1.push(_value: 1)
stack1.push(_value: 2)
stack1.push(_value: 3)

let firstPop = stack1.pop()
print("First pop is ", firstPop as Any!)

