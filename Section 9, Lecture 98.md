# Section 9, Lecture 98
🔙 to [iOS 11 App Development Bootcamp](bear://x-callback-url/open-note?id=83D58FA4-AF29-4C6F-A882-B2C8BF438CB9-6199-00003565A665E5FC)
Tags: #iOSDev #iOSDevAngelaBootCamp

Let’s make our code more efficient
```swift 
let firstQuestion = allQuestions.list[0]
questionLabel.text = firstQuestion.questionText
```

Actually, there’s more *efficient way*
```swift
questionLabel.text = allQuestions.list[0].questionText
```

Also, there’s even more
```swift
func nextQuestion() {
        if questionNumber <= 12 {
        questionLabel.text = allQuestions.list[questionNumber].questionText
        }else{
         //
        }
    }
```

We can actually using method `nextQuestion()` to make it work at the same way, and get efficiency decreasing one line code.
```swift
nextQuestion()
```