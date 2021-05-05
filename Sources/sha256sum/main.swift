import Foundation
import Copenssl

let text = "test string"

let result = text.withCString(encodedAs: UTF8.self) { textAsCString in
  SHA256(textAsCString, text.count, nil)
}

let sha256sum = Data(bytes: result!, count: 32)
  .map { String(format: "%02hhx", $0) }
  .joined()

print("sha256 sum: \(sha256sum)")
