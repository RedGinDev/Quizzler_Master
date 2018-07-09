# Section 9, Lecture 96
🔙 to [iOS 11 App Development Bootcamp](bear://x-callback-url/open-note?id=83D58FA4-AF29-4C6F-A882-B2C8BF438CB9-6199-00003565A665E5FC)
Tags: #iOSDev #iOSDevAngelaBootCamp
 
Thread 1: Fatal error: Index out of range
*In Debugger*
`print questionNumber`
`print allQuestions.list`
![](Section%209,%20Lecture%2096/Screen%20Shot%202018-07-05%20at%2010.35.39.png)

![](Section%209,%20Lecture%2096/Screen%20Shot%202018-07-05%20at%2010.38.19.png)

- - - -

為了不要觸及到array list[13]，將原本answerPressed中的`questionLabel.text = allQuestions.list[questionNumber].questionText`，改用呼叫 method nextQuestion() 
```swift
func nextQuestion() {
        if questionNumber <= 12 {
        questionLabel.text = allQuestions.list[questionNumber].questionText
        }else{
            print("End of Quiz")
            questionNumber = 0
        }
    }
```

但， user 其實看不到 print 的內容，要使用下一節介紹的UIAlert 來提醒 user