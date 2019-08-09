//
//  Message.swift
//  SimpleChatApp
//
//  Created by Suzuki Mariko on 09/08/2019.
//  Copyright © 2019 Mariko. All rights reserved.
//

import Foundation

struct Message {
    
    // メッセージのID(Firebaseで使用するキーを入れる)
    let documentId: String
    
    // 送信されたメッセージ
    let text: String
}
