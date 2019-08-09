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

    override func viewDidLoad() {
        super.viewDidLoad()
        // 確認
        print(receiveName)
        print(receiveHobby)
    }


}

