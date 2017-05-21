func logToConsole(_ msg: String) {
    print(msg)
}

func logToFile(_ msg: String) {
    print(msg)
}

func logToWindow(_ msg: String) {
    print(msg)
}

enum Logger {
    case console, window, file
    
    var print: (String) -> () {
        switch self {
        case .console:
            return logToConsole
        case .window:
            return logToWindow
        case .file:
            return logToFile
        }
    }
}

func getValue(from number: Int, logger: Logger) -> String {
    //First determine the result
    
    let result = "Something \(number)"
    
    logger.print(result)
    
    return result
}

getValue(from: 5, logger: .console)
