//
//  Defaults.swift
//  M6_L4_Task3
//
//  Created by Bekhruz Hakmirzaev on 02/12/22.
//

import Foundation
import SwiftKeychainWrapper

class Defaults: ObservableObject {
    @Published var password: String{
        didSet{
            KeychainWrapper.standard.set(password, forKey: "password")
        }
    }
    init(){
        self.password = KeychainWrapper.standard.object(forKey: "password") as? String ?? "no password"
    }
}
