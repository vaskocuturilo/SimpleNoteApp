# The simple note application.
This is simple note application with REST API and database

![](https://raw.githubusercontent.com/Alamofire/Alamofire/master/Resources/AlamofireLogo.png)

## Test scenario:
- Create simple application for create notes.
- Create function al for work with backend from application.
- Create automation scripts for application.
- Generate report after running automation scripts. 
    
## Requirements:
- Use any *object-oriented language* (Objective-C or Swift).
- Use automation patterns like *PageObject*, *data-driven* tests, etc.
- Use any testing frameworks (XCUITest). 
- provide code and clear instructions how to run it.

**Note**: please put your code in public repository.

**Note**: Please send link to this repo when you are done.


You will need the following technologies available to try it out:
* Git
* Alamofire
* XCUITest
* Swift 5
* Xcode 
### Ho w to run

``` xcodebuild test -workspace ToDoApplication.xcworkspace -scheme ToDoApplication -destination 'platform=iOS Simulator,name=iPhone 8,OS=14.0' -resultBundlePath TestResults```

- [x] ability to run tests for different browsers/os by configuring;
- [x] ability to run tests for different environments(urls) by configuring/by command-line.

# xcresults
A command line tool to extract test summaries & screenshots from Xcode 11 XCResult files.

# Installation
Download latest version from github releases:

wget https://github.com/eroshenkoam/xcresults/releases/latest/download/xcresults

# And make it executable:

chmod +x xcresults

### Generate Allure report 

```./xcresults export TestResults.xcresult/ outputDirectory```

### Open Allure report in browser

```allure serve outputDirectory/```


![](https://d.radikal.ru/d00/2106/f4/1c2e9e10734f.png) 

![](https://d.radikal.ru/d31/2106/71/778a2458df7d.png)
