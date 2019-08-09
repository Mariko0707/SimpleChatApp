//
//  ViewController.swift
//  SimpleChatApp
//
//  Created by Suzuki Mariko on 08/08/2019.
//  Copyright © 2019 Mariko. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var roomNameTextField: UINavigationItem!
    
    @IBOutlet weak var tableView: UITableView!
    
    // チャットの部屋一覧を保持する配列
    var rooms: [Room] = [] {
        // roomsが書き換わった時に
        didSet {
            // テーブルを更新する
            tableView.reloadData()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // おまじない
        tableView.delegate = self
        tableView.dataSource = self
    }

    @IBAction func didClickButton(_ sender: UIButton) {
    }
    
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // ルームの数をカウントするから今回はこれ！
        return rooms.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // 最初に通常通りセルを持ってくる
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        let room = rooms[indexPath.row]
        
        cell.textLabel?.text = room.name
        
        // 右矢印設定
        cell.accessoryType = .disclosureIndicator
        
        return cell
    }
    
    
}

