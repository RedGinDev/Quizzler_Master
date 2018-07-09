# Section 9, Lecture 90, 91
🔙 to [iOS 11 App Development Bootcamp](bear://x-callback-url/open-note?id=83D58FA4-AF29-4C6F-A882-B2C8BF438CB9-6199-00003565A665E5FC)
Tags: #iOSDev #iOSDevAngelaBootCamp
 
## Object-Oriented Programming
1. Objects which can send  and response messages to each other
2. example: Obj-C, Java, Swift
3. Difference of object class
* Class: The blueprint of building objects
	like **how** a car be created
* Object: gotten set up by the set of blueprint
	like the **actual car**
Three things associated w/ object
	1. **Properties**
	`let color = red`
	2. **Actions**
	`func drive(){	moveForwards}`
	3. **Events**
	`onStart(){drive()}`
combine together->
```swift
Class{
	Properties
	Events
	Actions
}
```

Using formerly examples to examine:
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


- - - -
Object-Oriented Programming (OOP) a Quick Note from Steve Jobs
Section 9, Lecture 91
If you're an Apple fan boy/girl, you might be interested in what Steve Jobs had to say about Object-Oriented Programming. This is an excerpt from a 1994 Rolling Stone interview where Steve (not a programmer) explains OOP in simple terms. 

![](Section%209,%20Lecture%2090,%2091/Screen%20Shot%202018-07-03%20at%2010.39.14.png)


Jeff Goodell: Would you explain, in simple terms, exactly what object-oriented software is?

Steve Jobs: Objects are like people. They’re living, breathing things that have knowledge inside them about how to do things and have memory inside them so they can remember things. And rather than interacting with them at a very low level, you interact with them at a very high level of abstraction, like we’re doing right here.

Here’s an example: If I’m your laundry object, you can give me your dirty clothes and send me a message that says, “Can you get my clothes laundered, please.” I happen to know where the best laundry place in San Francisco is. And I speak English, and I have dollars in my pockets. So I go out and hail a taxicab and tell the driver to take me to this place in San Francisco. I go get your clothes laundered, I jump back in the cab, I get back here. I give you your clean clothes and say, “Here are your clean clothes.”

You have no idea how I did that. You have no knowledge of the laundry place. Maybe you speak French, and you can’t even hail a taxi. You can’t pay for one, you don’t have dollars in your pocket. Yet, I knew how to do all of that. And you didn’t have to know any of it. All that complexity was hidden inside of me, and we were able to interact at a very high level of abstraction. That’s what objects are. They encapsulate complexity, and the interfaces to that complexity are high level.