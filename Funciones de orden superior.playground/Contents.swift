func logToConsole(_ msg: String) {
    print(msg)
}

func logToFile(_ msg: String) {
    print(msg)
}

func logToWindow(_ msg: String) {
    print(msg)
}

func getValue(from number: Int, loggerType: Int) -> String {
    //First determine the result
    
    let result = "Something \(number)"
    
    switch loggerType {
    case 1:
        logToConsole(result)
    case 2:
        logToWindow(result)
    case 3:
        logToFile(result)
    default:
        break
    }
    
    return result
}

getValue(from: 5, loggerType: 1)