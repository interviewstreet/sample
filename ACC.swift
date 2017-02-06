import Foundation

protocol __{};extension String:__{};extension Int:__{};extension Int64:__{};extension Double:__{}
class InputScanner {  //based on https://github.com/shoumikhin/StreamScanner
  let source = FileHandle.standardInput
  let delimiters = CharacterSet.whitespacesAndNewlines
  var buffer: Scanner?
  func read<T: __>() -> T? {
    if buffer?.isAtEnd ?? true {
      if let nextInput = String(data: source.availableData, encoding: .utf8) {
        buffer = Scanner(string: nextInput) }}
    if buffer == nil { return nil }
    var token: NSString?
    guard buffer?.scanUpToCharacters(from: delimiters, into: &token) ?? false,
      let string = token as? String else { return nil }
    buffer?.scanCharacters(from: delimiters, into: nil)
    let scanner = Scanner(string: string)
    switch T.self {
    case is String.Type: return token as? T
    case is Int.Type : var value: Int = 0; if scanner.scanInt(&value) { return value as? T }
    case is Int64.Type : var value: Int64 = 0; if scanner.scanInt64(&value) { return value as? T }
    case is Double.Type : var value: Double = 0; if scanner.scanDouble(&value) { return value as? T }
    default : break }
    return nil }}
let io = InputScanner()

if
    let a: Int = io.read(),
    let b: Int = io.read()
{
    print("\(a + b)\n\(a * b)")
}
