//
//  ContentView.swift
//  M6_L4_Task3
//
//  Created by Bekhruz Hakmirzaev on 02/12/22.
//

import SwiftUI
import SwiftKeychainWrapper

struct ContentView: View {
    @ObservedObject var defaults = Defaults()
    init(){
        print(defaults.password)
        defaults.password = "12345abc"
        print(defaults.password)
    }
    var body: some View {
        Text(defaults.password)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
