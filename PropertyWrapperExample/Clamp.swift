// © 2021 Ralf Ebert — PropertyWrapperExample
// License: https://opensource.org/licenses/MIT

import Foundation

@propertyWrapper
struct Clamp<Value: Comparable> {
    public init(wrappedValue: Value, _ range: ClosedRange<Value>) {
        self.range = range
        self.wrappedValue = min(self.range.upperBound, max(self.range.lowerBound, wrappedValue))
    }

    private var range: ClosedRange<Value>

    var wrappedValue: Value {
        didSet {
            self.wrappedValue = min(self.range.upperBound, max(self.range.lowerBound, wrappedValue))
        }
    }
}
