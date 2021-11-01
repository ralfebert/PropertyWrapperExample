// © 2021 Ralf Ebert — PropertyWrapperExample
// License: https://opensource.org/licenses/MIT

@testable import PropertyWrapperExample
import XCTest

class PropertyWrapperExampleTests: XCTestCase {
    func testClampModelValue() {
        var model = ExampleModel(percentValue: 5.0)

        model.percentValue = 5.0
        XCTAssertEqual(5.0, model.percentValue)

        model.percentValue = 0.0
        XCTAssertEqual(0.0, model.percentValue)

        model.percentValue = 10.0
        XCTAssertEqual(10.0, model.percentValue)

        model.percentValue = -1.0
        XCTAssertEqual(0.0, model.percentValue)

        model.percentValue = 101.0
        XCTAssertEqual(100.0, model.percentValue)
    }

    func testClampVariable() {
        @Clamp(range: 0 ... 10) var value = -1
        XCTAssertEqual(0, value)
        value = 11
        XCTAssertEqual(10, value)
    }
}
