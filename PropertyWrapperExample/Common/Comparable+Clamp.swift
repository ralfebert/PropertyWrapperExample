// © 2019 Ralf Ebert — PropertyWrapperExample
// License: https://opensource.org/licenses/MIT

import Foundation

extension Comparable {

    mutating func clamp(to range: ClosedRange<Self>) {
        self = self.clamped(to: range)
    }

    func clamped(to range: ClosedRange<Self>) -> Self {
        return min(max(range.lowerBound, self), range.upperBound)
    }

}
