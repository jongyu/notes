- iOS需要的库
```bash
brew install carthage
```

- iOS模拟器输入框无法输入,抛以下异常
>解决办法
>> Hardware -> Keyboard -> Connect Hardware Keyboard
```
org.openqa.selenium.WebDriverException: An unknown server-side error occurred while processing the command. Original error: Error Domain=com.facebook.WebDriverAgent Code=1 "Keyboard is not present" UserInfo={NSLocalizedDescription=Keyboard is not present}
```
