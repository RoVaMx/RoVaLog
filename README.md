# RoVa_Log (1.1.0)

Private Swift Package for estandar terminal debug log

## Setup (Optional)

```swift
import RoVa_Log

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        
        // 1) Setup log type enabled, all levels are enabled by default
        RoVa_LogMgr.logLevel = [.error]
        
        // 2) Setup log data that will be showed
        RoVa_LogMgr.logData = [.icon,.className,.function]

        return true
    }
}
```

## Protocol 

implements RoVaLog protocl in any class, struct or enum when you need terminal debug

Swift file:

```swift
import RoVa_Log

class YourClass: RoVa_Log {
    func anyFunction() {
        logDebug() // no argument required
        logError(msg: "any text")        
    }
}
```
Terminal output:
```terminal
• 🔎 YourClass.anyFunction [0017]
• ❌ YourClass.anyFunction [0018]: any text
```

## UML


```mermaid
classDiagram
    direction LR

    %% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    %% Classes

    namespace YourApp {        
        class YourClass {
        }
        class YourAppDelegate {
        }
    }
    
    namespace Package_Presentation {
        class RoVa_Log {
            <<Protocol>>
            logDebug(msg:String)
            logInfo(msg:String)
            logWarning(msg:String)
            logError(msg:String)
            logVerbose(msg:String)
        }
        class RoVa_LogFormatter {
            logData: Array[RoVa_LogData]$
            logLevel: Array[RoVa_LogLevel]$
        }
    }

    namespace Package_Data {
        class RoVa_LogMgr {
            logLevel: Array[RoVa_LogLevel]$
            logData: Array[RoVa_LogData]$
        }        
    }

    namespace Package_Domain {
        class RoVa_LogLevel {
            <<Enumeration>>
            debug
            info
            warning
            error
            verbose
        }
        class RoVa_LogData {
            <<Enumeration>>
            icon
            className
            function
            line
        }       
    }

    %% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    %% Styles
    
    style YourClass stroke:#F9A825
    style YourAppDelegate stroke:#F9A825
    style RoVa_Log stroke:#558B2F
    style RoVa_LogFormatter stroke:#558B2F
    style RoVa_LogMgr stroke:#9C27B0
    style RoVa_LogLevel stroke:#0097A7
    style RoVa_LogData stroke:#0097A7
    
    %% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    %% Connections 
    
    YourClass-->RoVa_Log : addopts
    YourAppDelegate-->RoVa_LogMgr : setup

    RoVa_Log-->RoVa_LogMgr : use
    RoVa_Log-->RoVa_LogFormatter : use
    RoVa_LogFormatter-->RoVa_LogMgr : use

    RoVa_LogMgr-->RoVa_LogLevel : use
    RoVa_LogMgr-->RoVa_LogData : use
```

## Documentation

- [Workflows](./doc/workflows.md)
