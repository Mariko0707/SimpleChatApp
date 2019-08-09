//
//  Room.swift
//  SimpleChatApp
//
//  Created by Suzuki Mariko on 09/08/2019.
//  Copyright © 2019 Mariko. All rights reserved.
//


// struct: 構造体
// チャットの部屋の情報を持つ構造体
// ひとことで簡単に言えば、継承のできないクラス
struct Room {
    
    // 部屋の名前
    let name: String
    
    // 部屋のID(Firestoreで使用するキーを入れる)
    let documentId: String
}
