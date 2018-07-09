# Section 9, Lecture 92
🔙 to [iOS 11 App Development Bootcamp](bear://x-callback-url/open-note?id=83D58FA4-AF29-4C6F-A882-B2C8BF438CB9-6199-00003565A665E5FC)
Tags: #iOSDev #iOSDevAngelaBootCamp


```swift
var list = [Question]()
```

array語法[] ， 其中Question Class也可以當類似int一樣，直接放進array中

```swift
init(){
}
```



no parameters because we don't want any data 

```swift
let item = Question(text: "Valentine\'s day is banned in Saudi Arabia.", correctAnswer: true)
list.append(item)
```



先let一個item property，為對應Question.class的，再用methods加入array