//: Playground - noun: a place where people can play

import UIKit
enum SubType : Int{
    case none = 0
    case bronze
    case silver
    case gold
}


//var subtype = SubType.bronze
var subtype :SubType = .silver

if(subtype == .silver){
    print("This user is a silver")
}

switch subtype {
case .none:
    print("None")
case .bronze:
    print("This user is a Bronze")
case .silver:
    print("This user is a silver")
case .gold:
    print("This user is a Gold")
}
//downoloaded user account
var subscribeType = 2
var subType:SubType!
switch subscribeType  {
case 1:
    subtype = .bronze
case 2:
    subtype = .silver
case 3:
    subtype = .gold

default:
    subtype = .none
}
print(subtype)
