// © 2021 Ralf Ebert — PropertyWrapperExample
// License: https://opensource.org/licenses/MIT

import Foundation

@propertyWrapper
struct Clamp<Value: Comparable> {
    public init(wrappedValue value: Value, _ range: ClosedRange<Value>) {
        self.value = value
        self.range = range
        // value is set again via wrappedValue to enforce range on init
        self.wrappedValue = value
    }

    private var value: Value
    private var range: ClosedRange<Value>

    var wrappedValue: Value {
        get {
            self.value
        }
        set {
            self.value = min(self.range.upperBound, max(self.range.lowerBound, newValue))
        }
    }
}
