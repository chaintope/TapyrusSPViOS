//
//  TapyrusSPV.swift
//  TapyrusSPViOS
//
//  Created by taniguchi on 2019/10/24.
//  Copyright © 2019 chaintope. All rights reserved.
//

import Foundation

enum Network: String {
    case Bitcoin = "bitcoin"
    case Testnet = "testnet"
    case Regtest = "regtest"
}

class TapyrusSPV {
    var remote = ""
    var network = Network.Bitcoin
    
    init(remote: String, network: Network) {
        tapyrus_enable_log()
        
        self.remote = remote
        self.network = network
    }
    
    func run() {
        tapyrus_spv_run(self.remote, self.network.rawValue);
    }
}
