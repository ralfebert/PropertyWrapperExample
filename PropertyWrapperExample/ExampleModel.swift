// © 2021 Ralf Ebert — PropertyWrapperExample
// License: https://opensource.org/licenses/MIT

import Foundation

struct ExampleModel {
    @Clamp(0 ... 100) var percentValue: Float = 0
    @Clamp(0 ... 100) var intValue: Int = 0
}
