//
//  DateHelperTests.swift
//  DateHelperTests
//
//  Created by Matías  Gil Echavarría on 12/04/21.
//

import XCTest
@testable import DateHelper

class DateHelperTests: XCTestCase {

    func testStringDateFromUsingStringFormat() {
        let stringDate = DateHelper.stringDateFrom(timestamp: 1618245724, withFormat: "dd/MM/yyyy - HH:mm")
        XCTAssertEqual(stringDate, "12/04/2021 - 11:42")
    }
    
    func testStringDateFromUsingDateFormatter() {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd/MM/yyyy - HH:mm"
        let stringDate = DateHelper.stringDateFrom(timestamp: 1618245724, withFormat: dateFormatter)
        XCTAssertEqual(stringDate, "12/04/2021 - 11:42")
    }
    
    func testFormatter() {
        let formatter = DateHelper.formatter(stringFormat: "dd/MM/yyyy - HH:mm")
        let date = Date(timeIntervalSince1970: TimeInterval(1618245724))
        XCTAssertEqual(formatter.string(from: date), "12/04/2021 - 11:42")
    }
//    override func setUpWithError() throws {
//        // Put setup code here. This method is called before the invocation of each test method in the class.
//    }
//
//    override func tearDownWithError() throws {
//        // Put teardown code here. This method is called after the invocation of each test method in the class.
//    }
//
//    func testExample() throws {
//        // This is an example of a functional test case.
//        // Use XCTAssert and related functions to verify your tests produce the correct results.
//    }
//
//    func testPerformanceExample() throws {
//        // This is an example of a performance test case.
//        self.measure {
//            // Put the code you want to measure the time of here.
//        }
//    }

}
