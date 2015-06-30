import Foundation

protocol __{};extension String:__{};extension Int:__{};extension Int64:__{};extension Double:__{}
class InputScanner {  //based on https://github.com/shoumikhin/StreamScanner
    let source = NSFileHandle.fileHandleWithStandardInput()
    let delimiters = NSCharacterSet.whitespaceAndNewlineCharacterSet()
    var buffer: NSScanner?
    func read<T: __>() -> T? {
        if buffer == nil || buffer!.atEnd {
            if let nextInput = NSString(data: source.availableData, encoding: NSUTF8StringEncoding) {
                buffer = NSScanner(string: nextInput as String)}}
        if buffer == nil { return nil }
        var token: NSString?
        if !buffer!.scanUpToCharactersFromSet(delimiters, intoString: &token) || token == nil { return nil }
        buffer!.scanCharactersFromSet(delimiters, intoString: nil)
        var ret: T? = nil
        if ret is String? { return token as? T }
        let scanner = NSScanner(string: token as! String)
        switch ret {
        case is Int? : var value: Int = 0; if scanner.scanInteger(&value) { ret = value as? T }
        case is Int64? : var value: Int64 = 0; if scanner.scanLongLong(&value) { ret = value as? T }
        case is Double? : var value: Double = 0; if scanner.scanDouble(&value) { ret = value as? T }
        default : ret = nil}
        return ret}}
let io = InputScanner()

if
    let a: Int = io.read(),
    let b: Int = io.read()
{
    print("\(a + b)\n\(a * b)")
}
