## Section 9, Lecture 86, 87
🔙 to [iOS 11 App Development Bootcamp](bear://x-callback-url/open-note?id=83D58FA4-AF29-4C6F-A882-B2C8BF438CB9-6199-00003565A665E5FC)
Tags: #iOSDev #iOSDevAngelaBootCamp

Source: 
[Udemy](https://www.udemy.com/ios-11-app-development-bootcamp/learn/v4/t/lecture/7555946?start=0)
### Section 9, Lecture 86
 
info.plist

```
View controller-based status bar appearance bool no 
//for controlling bar color
```

- - - -

What is a Property List (.plist)?
Section 9, Lecture 87
The Property List or .plist
.plist is short for Property List and it’s a file that’s automatically created with every Xcode project. This file stores configuration information for the application at runtime (when the app is running). The information is stored in a format called a key-value pair. Similar to a dictionary, the key is the property name and the value is the configuration.

For example, when we set the status bar as “light” in the general settings pane, a property is automatically created in the .plist with

key = Status bar style, value : String = UIStatusBarStyleLightContent.


Here's what Apple has to say about Property Lists in their documentation, if you're interested in getting an in-depth understanding, you can check it out here:
[Apple Document](https://developer.apple.com/library/content/documentation/General/Reference/InfoPlistKeyReference/Articles/AboutInformationPropertyListFiles.html)