# The simple note application.
This is simple note application with REST API and database

## Test scenario:
- Create simple application for create notes.
- Create functional for work with backend from application.
- Create automation scripts for application.
- Generate report after running automation scripts. 
    
## Requirements:
- Use any *object-oriented language* (Objective-C or Swift).
- Use automation patterns like *PageObject*, *data-driven* tests, etc.
- Use any testing frameworks (XCUITest). 
- provide code and clear instructions how to run it.

**Note**: please put your code in public repository.

**Note**: Please send link to this repo when you are done.

**Note**: Please use this backend server (https://github.com/vaskocuturilo/Server-Note-App).


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

### Diagram how to work.
![](https://camo.githubusercontent.com/f59b3a63047a9581ef03ffecb44093c9d88157248ebeab88dd58d2b9dc6b0427/68747470733a2f2f632e726164696b616c2e72752f6331382f323130362f30362f3333323637373436363038612e706e67)


![](https://d.radikal.ru/d00/2106/f4/1c2e9e10734f.png) 

![](https://d.radikal.ru/d31/2106/71/778a2458df7d.png)
