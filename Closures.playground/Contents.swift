import UIKit

//Closures are self-contained blocks of functionality that
//can be passed around and used in your code. Closures in Swift are similar to blocks in C and Objective-C and to lambdas in other programming languages.

var name :String = "Jonny"


func addTwoNumbers(a:Int, b:Int) ->Int{
    return a+b
}

func multiplyTwoNumbers(a:Int, b: Int) -> Int{
    return a * b
    
}

func doMath(a:Int, b:Int, operation: (Int, Int)->Int){
    operation(a, b)
}
doMath(a: 2, b: 4, operation: multiplyTwoNumbers(a:b:))
