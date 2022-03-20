//
//  StandardThingServiceTests.swift
//  XcovTestTests
//
//  Created by Tobias Boogh on 2022-03-20.
//

import XCTest
@testable import XcovTest

class StandardThingServiceTests: XCTestCase {

    func getSubject() -> ThingService {
        return StandardThingService()
    }

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testAll() throws {
        let subject = getSubject()
        let thing = Thing.fake()
        subject.add(thing: thing)

        let all = subject.all()
        XCTAssertTrue(all.contains(thing))
    }

    func testAdd() throws {
        let subject = getSubject()
        let thing = Thing.fake()
        subject.add(thing: thing)

        let all = subject.all()
        XCTAssertTrue(all.contains(thing))
    }

    func testDelete() throws {
        let subject = getSubject()
        let thing = Thing.fake()
        subject.add(thing: thing)

        subject.delete(id: thing.id)

        let all = subject.all()
        XCTAssertFalse(all.contains(thing))
    }

}

extension Thing {

    static func fake() -> Thing {
        Thing(name: "Thing",
              age: 123,
              tentacles: 5,
              angry: true)
    }
}
