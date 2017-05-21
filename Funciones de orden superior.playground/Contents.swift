func logToConsole(_ msg: String) {
    print(msg)
}

func logToFile(_ msg: String) {
    print(msg)
}

func logToWindow(_ msg: String) {
    print(msg)
}

protocol Logger {
    func print(_ msg: String)
}

class ConsoleLogger: Logger {
    func print(_ msg: String) {
        logToConsole(msg)
    }
}

class WindowLogger: Logger {
    func print(_ msg: String) {
        logToWindow(msg)
    }
}

class FileLogger: Logger {
    func print(_ msg: String) {
        logToFile(msg)
    }
}

func getValue(from number: Int, logger: Logger) -> String {
    //First determine the result
    
    let result = "Something \(number)"
    
    logger.print(result)
    
    return result
}

getValue(from: 5, logger: ConsoleLogger())