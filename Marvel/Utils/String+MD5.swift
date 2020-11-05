//
//  String+MD5.swift
//  Marvel
//
//  Created by Nadal Ferriol on 05/11/2020.
//  Copyright © 2020 Nadal Ferriol. All rights reserved.
//


import Foundation
import CommonCrypto

extension String {
    
    /// Method invoke to codifier string with MD5
  var md5: String {
    let length = Int(CC_MD5_DIGEST_LENGTH)
    let messageData = data(using:.utf8)!
    var digestData = Data(count: length)

    _ = digestData.withUnsafeMutableBytes { digestBytes -> UInt8 in
        messageData.withUnsafeBytes { messageBytes -> UInt8 in
            if let messageBytesBaseAddress = messageBytes.baseAddress, let digestBytesBlindMemory = digestBytes.bindMemory(to: UInt8.self).baseAddress {
                let messageLength = CC_LONG(messageData.count)
                CC_MD5(messageBytesBaseAddress, messageLength, digestBytesBlindMemory)
            }
            return 0
        }
    }
    return (0..<length).reduce("") {
      $0 + String(format: "%02x", digestData[$1])
    }
  }
}
