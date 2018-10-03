//: Playground - noun: a place where people can play

import UIKit
import PlaygroundSupport

var str = "Hello, playground"

class SampleClass
{
    let gretchen : String = "That is so Fetch!"
    let regina : String = "Get in the car loser we are going shopping"
    let shax : String = "We should totally just stab Caesar"
    var count : Int = 0
    
    @objc
    public func pickString() -> String
    {
        change()
        if (count == 0)
        {
            print(gretchen)
            return gretchen
        }
        else if (count == 1)
        {
            print(regina)
            return regina
        }
        else
        {
            print(shax)
            return shax
        }
    }
    public func change() -> Void{
        count = Int(arc4random() % 3)
    }
}

let sampleButton : UIButton = UIButton(frame : CGRect(x : 0, y : 0, width : 300, height : 50))
let guess = SampleClass()
let currentView = UIView(frame : CGRect(x : 0, y : 0, width : 800, height : 880))
sampleButton.setTitle("Click Here!" ,for : .normal)
sampleButton.backgroundColor = .magenta
sampleButton.addTarget(guess, action: #selector(guess.pickString), for: .touchUpInside)

currentView.backgroundColor = .black

currentView.addSubview(sampleButton)





PlaygroundPage.current.liveView = currentView
PlaygroundPage.current.needsIndefiniteExecution = true
sampleButton.setTitle(guess.pickString(), for: .normal)

