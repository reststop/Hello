# Hello

I have a simple framework example I wrote to show the problem.
It consists of an Objective-C based framework "Hello" with the class "Hello", with a swift file "Something.swift", and a modulemap "hello.modulemap".

## Project 

In the project, I have 2 targets:

- Hello, a dynamic framework
- HelloStatic, a static library

## Settings

In the build settings, I've set:

- Build Libraries for Distribution = Yes
- Module Identifier = Hello
- Defines Module = Yes
- Module Map File = $(SRCROOT)/Hello/hello.modulemap
- Product Module Name = Hello
- Enable Clang Module Debugging = Yes
- Enable Modules (C and Objective C) = Yes
- Objective-C Generated Interface Header Name = Hello-Swift.h
- Swift Language Version = Swift 5

For the HelloStatic target, I've tried both Hello and HelloStatic as the Product Name, leaving the Product Module Name = Hello (because I don't want to have to change the import statement depending on whether I consume the dynamic framework or the static library.)

The Mach-O type for the targets is Dynamic Library and Static Library respectively.

## Issues

The Issue:

-  If I build the target Hello, everything works fine as expected.  The swift file recognizes the modulemap, and the extension for Hello works as expected.
- If I build the target HelloStatic, the swift file tells me: **Cannot find type 'Hello' in scope** on the line with the 'extension Hello'


## Failed Workarounds

If I disable Build Libraries for Distribution, then I can add a Bridging-Header file which includes "Hello.h" and the build succeeds, but it doesn't generate the Hello-Swift.h header, nor the *.swiftinterface files needed to consume a Swift library any another App.

I figure that the compiler is either ignoring the modulemap file, or doesn't find it in it's search paths.


# Hi

A simple SwiftUI application to consume the Hello framework

Once you build the frameowrk, and build a .xcframework, simply drop the .xcframework into the frameworks panel for the Hi application

