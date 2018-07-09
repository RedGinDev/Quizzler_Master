# Section 9, Lecture 97
🔙 to [iOS 11 App Development Bootcamp](bear://x-callback-url/open-note?id=83D58FA4-AF29-4C6F-A882-B2C8BF438CB9-6199-00003565A665E5FC)
Tags: #iOSDev #iOSDevAngelaBootCamp

Resource: 
[UIAlertController - UIKit | Apple Dev](https://developer.apple.com/documentation/uikit/uialertcontroller)
[UIAlertAction - UIKit | Apple Dev](https://developer.apple.com/documentation/uikit/uialertaction)

UIAlertController
![](Section%209,%20Lecture%2097/Screen%20Shot%202018-07-05%20at%2011.04.33.png)

從Apple的 Documentation中找使用法
![](Section%209,%20Lecture%2097/Screen%20Shot%202018-07-05%20at%2011.07.58.png)
點進去
![](Section%209,%20Lecture%2097/Screen%20Shot%202018-07-05%20at%2011.11.12.png)

compared 
* Modal Alert
* Popped up from the middle screen and multiple select option
![](Section%209,%20Lecture%2097/Screen%20Shot%202018-07-05%20at%2011.15.06.png)
* Action Sheet

![](Section%209,%20Lecture%2097/Screen%20Shot%202018-07-05%20at%2011.15.18.png)

From Apple’s Dev Documentation
```swift
let alert = UIAlertController(title: "My Alert", message: "This is an alert.", preferredStyle: .alert) 
alert.addAction(UIAlertAction(title: NSLocalizedString("OK", comment: "Default action"), style: .default, handler: { _ in 
NSLog("The \"OK\" alert occured.")
}))
self.present(alert, animated: true, completion: nil)
```

- [x] 接著把method nextQuestion 從頭搞懂一遍
method nextQuestion full code (detail it later)
```swift
func nextQuestion() {
        if questionNumber <= 12 {
        questionLabel.text = allQuestions.list[questionNumber].questionText
        }else{
            let alert = UIAlertController(title: "Awesome", message: "You've finished all the questions, do you want to start over?", preferredStyle: .alert)
            let restartAction = UIAlertAction(title: "Restart", style: .default, handler:{ (UIAlertAction) in
                self.startOver()
            })
            alert.addAction(restartAction)
            present(alert, animated: true, completion: nil)
        }
    }

```


- - - -

第一行，我們要先做一個 popped up alert 。 我們要調用 UIAlertController API ， 實作其中 Creating an Alert Controller (見[UIAlertController](https://developer.apple.com/documentation/uikit/uialertcontroller) ), 
```swift
let alert = UIAlertController(title: "Awesome", message: "You've finished all the questions, do you want to start over?", preferredStyle: .alert)
```

> **preferredStyle**  
> The style to use when presenting the alert controller. Use this parameter to configure the alert controller as an **action sheet** or as a **modal alert**.  
第一行只是先做出一個 UI popped up alert ， 現在還要再做一個 action

第二行，撰寫一 UIAlertAction
[UIAlertAction](https://developer.apple.com/documentation/uikit/uialertaction) `init(title: String?, style: UIAlertAction.Style, handler: ((UIAlertAction) -> Void)? = nil)`
實作第二行程式碼
```swift
   let restartAction = UIAlertAction(title: "Restart", style: .default, handler:{ (UIAlertAction) in
                self.startOver()
```
其中， UIAlertAction.Style 的 Style 
[UIAlertAction.Style](https://developer.apple.com/documentation/uikit/uialertaction/style)
> Constants  
> case default  
> Apply the default style to the action’s button.  
>   
> case cancel  
> Apply a style that indicates the action cancels the operation and leaves things unchanged.  
>   
> case destructive  
> Apply a style that indicates the action might change or delete data.  

UIAlertAction.handler 用呼叫method startover()
Question: why `self.startOver()` 中有個self ?
講者Angela: 現階段先知道，如果API中有用到`in method()`的呼叫方式，method()**前面**一定要加`self.`
也就是，因為我們是在Clousrue裡面呼叫，所以裡面要加`self.`

第三行 把`UIAlertAction` 加到UI `UIAlertController` 中
```swift
alert.addAction(restartAction)
```

第四行，present the alert to the viewer
```swift
present(alert, animated: true, completion: nil)
```

最後，在 method startOver()中
```swift
func startOver() {
        questionNumber = 0
        nextQuestion()
    }
```

我們必須再呼叫一次 `nextQuestion()` ，是因為如果不呼叫，畫面依然會停在 array list[12] (最後一個) 的地方，我們必須要再一次執行 `nextQuestion()` ，才能讓畫面回到第一個問題。
