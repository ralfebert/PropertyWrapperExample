// © 2019 Ralf Ebert — PropertyWrapperExample
// License: https://opensource.org/licenses/MIT

import Foundation

@propertyWrapper
struct Clamp<Value: Comparable> {

    let range: ClosedRange<Value>

    init(wrappedValue value: Value, _ range: ClosedRange<Value>) {
        precondition(range.contains(value))
        self.wrappedValue = value
        self.range = range
    }

    var wrappedValue: Value {
        didSet {
            self.wrappedValue = self.wrappedValue.clamp(to: self.range)
        }
    }
}
