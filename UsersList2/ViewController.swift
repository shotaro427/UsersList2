//
//  ViewController.swift
//  UsersList2
//
//  Created by 田内　翔太郎 on 2019/08/09.
//  Copyright © 2019 田内　翔太郎. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // 遷移元から受け取る値を入れる変数
    // 名前
    var receiveName: String = String()
    // 趣味
    var receiveHobby: String = String()
    
    // ユーザーリストの詳細情報を表示するラベル
    // 名前を表示するラベル
    @IBOutlet weak var nameLabel: UILabel!
    // 趣味を表示するテキストビュー
    @IBOutlet weak var hobbyView: UITextView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // ユーザーデータを表示
        // 名前の表示
        nameLabel.text = receiveName
        // 趣味の表示
        hobbyView.text = receiveHobby
        
    }


}

