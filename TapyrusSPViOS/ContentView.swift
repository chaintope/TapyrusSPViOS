//
//  ContentView.swift
//  TapyrusSPViOS
//
//  Created by taniguchi on 2019/10/24.
//  Copyright © 2019 chaintope. All rights reserved.
//

import SwiftUI

struct Options {
    var remote: String
    var network: Network
    
    static let `default` = Self(remote: "", network: Network.Bitcoin)
}

struct ContentView: View {
    @State var options: Options
    
    var body: some View {
        VStack(spacing: 20) {
            Text("Input Bitcoin full node address and port to be connected.")
            
            VStack {
                Picker("Network", selection: $options.network) {
                    Text(Network.Bitcoin.rawValue).tag(Network.Bitcoin)
                    Text(Network.Testnet.rawValue).tag(Network.Testnet)
                    Text(Network.Regtest.rawValue).tag(Network.Regtest)
                }
            }
            
            HStack {
                Text("connect to").bold()
                Divider()
                TextField("0.0.0.0:8444", text: $options.remote)
            }
            
            Button(
                action: {
                    let spv = TapyrusSPV.init(remote: self.options.remote, network: self.options.network)
                    spv.run()
                },
                label: {
                    Text("Run SPV node")
                }
            )
        }
        .padding(.top)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(options: .default)
    }
}
