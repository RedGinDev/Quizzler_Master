# Section 9, Lecture 99
🔙 to [iOS 11 App Development Bootcamp](bear://x-callback-url/open-note?id=83D58FA4-AF29-4C6F-A882-B2C8BF438CB9-6199-00003565A665E5FC)
Tags: #iOSDev #iOSDevAngelaBootCamp

```swift
score = score + 1
score += 1
```
可讀性的話，第一個比較優良；
若想要縮減code line，第二個比較優良。

```swift
 func updateUI() {
        scoreLabel.text = score
    }
```
Cannot assign value of type 'Int' to type 'String?'
text(String) = score (Int) ???

```swift
func updateUI() {
        scoreLabel.text = "\(score)"
    }
```


```swift
scoreLabel.text = "Score: \(score)"
```

```swift
func updateUI() {
        scoreLabel.text = "Score: \(score)"
        progressLabel.text = "\(questionNumber + 1) / 13"
    }

```

Value of type 'CGRect' has no member 'sizewidth'

```swift
progressBar.frame.size.width = (view.frame.size.width / 13) * CGFloat (questionNumber + 1)
```


Update the method starter()
```swift
   func startOver() {
        questionNumber = 0
        
        score = 0
        nextQuestion()
    }
```