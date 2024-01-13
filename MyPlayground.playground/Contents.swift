import UIKit

var name: String = "jeongmu"
var age: Int = 20

name
name = "정무"

age
age = 30


let one: Int = 1
let two: Int = 2

func sayHellow(name: String) -> String {
    return "Nice to meet you, \(name)"
}


sayHellow(name: "정무")

func introduce(name: String, age: Int) -> String {
    return "Hi, My name is \(name) , I'm \(age)"
}

introduce(name: name, age: age)

func add(a: Int , b:Int) -> Int{
    return a * b
}

add(a: 2, b:3)
