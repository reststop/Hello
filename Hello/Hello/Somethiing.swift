//
//  Something.swift
//  Hello
//
//  Created by Carl Baltrunas on 2/16/23.
//

import Foundation

// Use one of the following:

//class
//public class Goodbye {

//extension
//public extension Hello {

public extension Hello {

    public class func Text(_ text: String) {
        if let hello = NSClassFromString("Hello") {
            let selector: Selector = NSSelectorFromString("text:")
            if hello.responds(to: selector) {
                debugPrint("Swift calling \(selector) \(text)")
                hello.perform(selector, with: text as NSString, afterDelay: 0)
            }
        }
    }

} // end of class
