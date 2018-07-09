# Section 9, Lecture 94
🔙 to [iOS 11 App Development Bootcamp](bear://x-callback-url/open-note?id=83D58FA4-AF29-4C6F-A882-B2C8BF438CB9-6199-00003565A665E5FC)
Tags: #iOSDev #iOSDevAngelaBootCamp 

in Controller/ViewController.swift

```swift
//creating new object
    let allQuestions = QuestionBank()
```

注意其中， QuestionBank() 掛號裡面為什麼是空的，是因為引用的 QuestionBank Class 中
```swift
init(){
}
```
::init()裡頭也是空的::
* 延伸: 可參考 Question Class 中， init() 有值，引用該class要有值

In ViewController.swift
```swift
let firstQuestion = allQuestions.list[0]
```
中，代入的 firstQuestion ，是 Model/QuestionBank.swift 中的
```swift
let item = Question(text: "Valentine\'s day is banned in Saudi Arabia.", correctAnswer: true)
        
        // Add the Question to the list of questions
        list.append(item)
```

記得， Question object (class?) 中，有 questionText (String) 和 answer (Bool)
```swift
questionLabel.text = firstQuestion.questionText
```

再來，要來實作按下answer後判斷true false的func answerPressed

```swift
var pickedAnswer : Bool = false
//
//
//
@IBAction func answerPressed(_ sender: AnyObject) {
        if sender.tag == 1{
            pickedAnswer = true
        }
        else if sender.tag == 2{
            pickedAnswer = false
        }
    }
//QUESTION
```

**那麼，QUESTION**
怎麼在QUESTION處，去呼叫checkedAnswer，並且執行檢查

> 猜測，sender checkAnswer = ……  

結果， ~~sender~~
`checkAnswer()`

- - - -
```swift
let firstQuestion = allQuestions.list[0]
let answer = firstQuestion.answer
```
可以簡單置換成
```swift
let firstQuestion= allQUestions.list[0].answer 
```
