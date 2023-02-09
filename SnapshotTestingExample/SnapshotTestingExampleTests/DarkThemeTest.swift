//
//  DarkThemeTest.swift
//  SnapshotTestingExampleTests
//
//  Created by Ali Murad on 09/02/2023.
//

import XCTest
@testable import SnapshotTestingExample
import SnapshotTesting
final class DarkThemeTest: XCTestCase {

    var sut: ViewController! // System Under Test
    
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        sut = (storyboard.instantiateViewController(withIdentifier: "ViewController") as! ViewController)
         
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        sut = nil
    }

    func testDefaultState() {
        assertSnapshot(matching: sut, as: .image)
        //on,
        //record
    }
    
    func testDarkTheme() {
        sut.isDarkTheme = true
        assertSnapshot(matching: sut, as: .image)
    }
 

}
