//
//  RoVa_Log.swift
//
//
//  Created by Francisco Romero on 22/07/24.
//


public protocol RoVa_Log {
}

// MARK: - Utils Methods
extension RoVa_Log {

    package static var className: String {
        return String(describing: Self.self)
    }

}


public extension RoVa_Log { // MARK: Common Methods

    func logDebug(_ function: String = #function,
                  _ line: Int = #line,
                  msg: String? = nil) {
        if RoVa_LogLevel.debug.flagIsActive(in: RoVa_LogMgr.logLevelInt) {
            print(RoVa_LogFormatter.logText(
                RoVa_LogFormatter.iconDebug,
                Self.className,
                function, line,
                msg: msg
            ))
        }

    }

    func logInfo(_ function: String = #function,
                 _ line: Int = #line,
                 msg: String? = nil) {
        if RoVa_LogLevel.debug.flagIsActive(in: RoVa_LogMgr.logLevelInt) {
            print(RoVa_LogFormatter.logText(
                RoVa_LogFormatter.iconInfo,
                Self.className,
                function, line,
                msg: msg
            ))
        }

    }

    func logWarning(_ function: String = #function,
                    _ line: Int = #line,
                    msg: String? = nil) {
        if RoVa_LogLevel.debug.flagIsActive(in: RoVa_LogMgr.logLevelInt) {
            print(RoVa_LogFormatter.logText(
                RoVa_LogFormatter.iconWarning,
                Self.className,
                function, line,
                msg: msg
            ))
        }

    }

    func logError(_ function: String = #function,
                  _ line: Int = #line,
                  msg: String? = nil) {
        if RoVa_LogLevel.debug.flagIsActive(in: RoVa_LogMgr.logLevelInt) {
            print(RoVa_LogFormatter.logText(
                RoVa_LogFormatter.iconError,
                Self.className,
                function, line,
                msg: msg
            ))
        }

    }

    func logVerbose(_ function: String = #function,
                    _ line: Int = #line,
                    msg: String? = nil) {
        if RoVa_LogLevel.debug.flagIsActive(in: RoVa_LogMgr.logLevelInt) {
            print(RoVa_LogFormatter.logText(
                RoVa_LogFormatter.iconVerbose,
                Self.className,
                function, line,
                msg: msg
            ))
        }

    }

}


public extension RoVa_Log { // MARK: Package Methods

    func logUIInput (_ function: String = #function,
                     _ line: Int = #line,
                     msg: String? = nil) {
        print(RoVa_LogFormatter.logText(
            RoVa_LogFormatter.iconUIInput,
            Self.className,
            function, line,
            msg: msg
        ))
    }

    func logUIOutput (_ function: String = #function,
                      _ line: Int = #line,
                      msg: String? = nil) {
        print(RoVa_LogFormatter.logText(
            RoVa_LogFormatter.iconUIOutput,
            Self.className,
            function, line,
            msg: msg
        ))
    }

    func logUISount (_ function: String = #function,
                     _ line: Int = #line,
                     msg: String? = nil) {
        print(RoVa_LogFormatter.logText(
            RoVa_LogFormatter.iconUISound,
            Self.className,
            function, line,
            msg: msg
        ))
    }

    func logUIVibration (_ function: String = #function,
                         _ line: Int = #line,
                         msg: String? = nil) {
        print(RoVa_LogFormatter.logText(
            RoVa_LogFormatter.iconUIVibration,
            Self.className,
            function, line,
            msg: msg
        ))
    }

    func logAppLaunch (_ function: String = #function,
                       _ line: Int = #line,
                       msg: String? = nil) {
        print(RoVa_LogFormatter.logText(
            RoVa_LogFormatter.iconAppLaunch,
            Self.className,
            function, line,
            msg: msg
        ))
    }

    func logAppConfConnection (_ function: String = #function,
                               _ line: Int = #line,
                               msg: String? = nil) {
        print(RoVa_LogFormatter.logText(
            RoVa_LogFormatter.iconAppConfConnection,
            Self.className,
            function, line,
            msg: msg
        ))
    }

    func logAppScene (_ function: String = #function,
                      _ line: Int = #line,
                      msg: String? = nil) {
        print(RoVa_LogFormatter.logText(
            RoVa_LogFormatter.iconAppScene,
            Self.className,
            function, line,
            msg: msg
        ))
    }
}


public extension RoVa_Log { // MARK: TCA Methods
    
    func logStore(_ function: String = #function,
                     _ line: Int = #line,
                     msg: String? = nil) {
        print(RoVa_LogFormatter.logText(
            RoVa_LogFormatter.iconTCAStore,
            Self.className,
            function, line,
            msg: msg
        ))
    }
    
    func logReducer(_ function: String = #function,
                     _ line: Int = #line,
                     msg: String? = nil) {
        print(RoVa_LogFormatter.logText(
            RoVa_LogFormatter.iconTCAReducer,
            Self.className,
            function, line,
            msg: msg
        ))
    }
    
    func logState(_ function: String = #function,
                     _ line: Int = #line,
                     msg: String? = nil) {
        print(RoVa_LogFormatter.logText(
            RoVa_LogFormatter.iconTCAState,
            Self.className,
            function, line,
            msg: msg
        ))
    }
    
    func logAction(_ function: String = #function,
                     _ line: Int = #line,
                     msg: String? = nil) {
        print(RoVa_LogFormatter.logText(
            RoVa_LogFormatter.iconTCAAction,
            Self.className,
            function, line,
            msg: msg
        ))
    }
    
    func logDepenency(_ function: String = #function,
                     _ line: Int = #line,
                     msg: String? = nil) {
        print(RoVa_LogFormatter.logText(
            RoVa_LogFormatter.iconTCADependency,
            Self.className,
            function, line,
            msg: msg
        ))
    }
}
