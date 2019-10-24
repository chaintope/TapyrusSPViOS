//
//  TapyrusSPV.swift
//  TapyrusSPViOS
//
//  Created by taniguchi on 2019/10/24.
//  Copyright © 2019 chaintope. All rights reserved.
//

import Foundation

class TapyrusSPV {
    static func initialize() {
        enable_log()
    }
}

class RustGreetings {
    func sayHello(to: String) -> String {
        let result = rust_greeting(to)
        let swift_result = String(cString: result!)
        rust_greeting_free(UnsafeMutablePointer(mutating: result))
        return swift_result
    }
}
