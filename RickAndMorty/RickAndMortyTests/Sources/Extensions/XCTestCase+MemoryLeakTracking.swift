//
//  XCTestCase+MemoryLeakTracking.swift
//  RickAndMortyTests
//
//  Created by Ana Leticia Camargos on 05/08/20.
//  Copyright © 2020 Ana Leticia Camargos. All rights reserved.
//

import XCTest

extension XCTestCase {
    func trackForMemoryLeaks(_ instance: AnyObject, file: StaticString = #file, line: UInt = #line) {
        addTeardownBlock { [weak instance] in
            XCTAssertNil(instance, "Instance should have been deallocated. Potential memory leak.", file: file, line: line)
        }
    }
}
