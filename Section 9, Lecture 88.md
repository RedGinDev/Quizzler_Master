## Section 9, Lecture 88
🔙 to [iOS 11 App Development Bootcamp](bear://x-callback-url/open-note?id=83D58FA4-AF29-4C6F-A882-B2C8BF438CB9-6199-00003565A665E5FC)
Tags: #iOSDev #iOSDevAngelaBootCamp

Foundation is slightly lighter library than the UIKit

Check on apple’s info
[Foundation | Apple Developer Documentation](https://developer.apple.com/documentation/foundation)

[Swift | Apple Developer Documentation](https://developer.apple.com/documentation/swift)

[UIKit | Apple Developer Documentation](https://developer.apple.com/documentation/uikit)

- - - -
Property
Vs
Method
Vs
Class

*06:39*
A method is a function that’s associated with a class
//在class括弧裡的是Method 
//不在class括弧裡的，只是free floating, 只是個function

*07:20*
Property needs a starting value
*08:00*
```swift
init( text: String, correctAnswer: Bool){
        questionText = text
        answer = correctAnswer
    }
```
This method determines what happens when a new question object is created from this question class

*09:12*
```swift
class myOtherClass{
    let question = Question (text: "What's the meaning of life?", correctAnswer: true)
}
```
可以用這個方法來create 不同的class，用以把要寫的Q&A給寫入class中

*11：00 Summary*
Class Question
Property: questionText, answer
Initialization methods	

```swift
class Question {
    
    let questionText : String
    let answer : Bool
    //PROPERTIES
    
	   init( text: String, correctAnswer: Bool){
        questionText = text
        answer = correctAnswer
    }
    //EVENTS
    
    func someFunction(){
        // DO something
    }
    //ACTIONS
}

```

