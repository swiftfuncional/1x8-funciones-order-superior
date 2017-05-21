func logToConsole(_ msg: String) {
    print(msg)
}

func logToFile(_ msg: String) {
    print(msg)
}

func logToWindow(_ msg: String) {
    print(msg)
}

func getValue(from number: Int, logger: (String) -> Void) -> String {
    //First determine the result
    
    let result = "Something \(number)"
    
    logger(result)
    
    return result
}

getValue(from: 5, logger: logToConsole)