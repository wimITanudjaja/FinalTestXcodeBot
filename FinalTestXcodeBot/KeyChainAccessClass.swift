//
//  KeyChainAccessClass.swift
//  FinalTestXcodeBot
//
//  Created by Sean Rada on 1/24/20.
//  Copyright © 2020 Rigil. All rights reserved.
//

import UIKit
import KeychainAccess

class KeyChainAccessClass: NSObject {
    
    var keychain = Keychain.init(service: "com.rigil.testBOT343443")

}
