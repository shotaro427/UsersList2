//
//  UserListTableViewController.swift
//  UsersList2
//
//  Created by 田内　翔太郎 on 2019/08/09.
//  Copyright © 2019 田内　翔太郎. All rights reserved.
//

import UIKit

class UserListTableViewController: UITableViewController {
    
    // 遷移先に渡す値
    // 遷移先に渡す名前の情報
    var giveName: String = String()
    // 遷移先に渡す趣味の情報
    var giveHobby: String = String()
    
    // ユーザーデータ
    // 名前一覧
    let nameList: [String] = [
        "永井 優",
        "小野 勇輔",
        "豊岡 正紘",
        "分目 祐太",
        "金田 祐作",
        "甲斐崎 香",
        "志賀 大河",
        "津國 由莉子",
        "中村　泰輔",
        "堀田 真",
        "田内　翔太郎",
        "福沢　貴一",
        "平田　奈那",
        "吉澤　優衣"
    ]
    // 趣味一覧
    let hobbyList: [String] = [
        "音楽が好き。ビジュアル系バンドが好きでバンドを組んでギターを弾いたりした。\n最近の趣味はバイクに乗ることとキックボクシング。",
        "スポーツをすることと釣りが好き\nサッカーと水泳をやっていた。",
        "バックカントリースキーしてみたい！美味しいものたくさん食べたい！スキューバダイビングしたい！深夜特急読みながら同じところ旅したい！",
        "卓球とランニングが好き。\n世界のいろいろな国に行ってみたいです。最近は、フィリピンに行って大好きになった。",
        "小学校二年生から高校3年生までサッカーをしていて、今も趣味でフットサルをしている。\n最近はキックボクシングジムに通い始めたが、細身になりたいので筋トレはあまりしないようにしている。\nライブハウスに音楽を聞きに行くことが好きで、5個上の兄と一緒にライブやフェスに行くことがある。",
        "あだ名はかおりん。18歳 女\n好きなことは旅行と遊び\n友達と遊ぶことが好き。\nカラオケとかめっちゃいくらしい...",
        "バレーボール、サッカー、バスケと運動が全般的に好き。海外旅行などに最近ハマり、特にほかのアジア圏の国への旅行をいっぱいしてみたい。あと料理も好き。",
        "あだ名はゆりちゃん。\n22歳女。\n好きなことはピアノと麻雀とバレエ。\n基本的にインドアで引きこもって家でゲームをしていることが多い。\n夜になると街を徘徊することも多く、その時はお酒を大量に浴びている。\n次の日に、飲み過ぎだと後悔するけど、繰り返してしまうおバカさんです。",
        "サッカー、カラオケ、旅行、食事、飲酒等基本楽しければなんでもいい。\nポンコツという自負を持っている",
        "エレキベースが趣味。高校1年からロックを中心に音楽活動を始める。初めはASIAN KUNG - FU GENERATIONや東京事変などを好みとしていた。大学からは一変し、フュージョンを中心に演奏活動をする。Pat Metheny Group や スナーキー・パピーが好き。",
        "普段は、読書か散歩かアニメを見て過ごしている超インドア。最近は筋トレにもハマりかけている",
        "サッカー好きの脳筋です。\n今の趣味はバイトすること週6でみんな大好きcoffee mafiaで働いてますよ!\nいつでもおいで:mafia:",
        "あだなは、はち(本名:なな)で、東京にくるたびにハチ公に挨拶している。\n弾丸ひとり旅など、突然思い立ったことをやるのが好き。\n「東京生活わくわくしています〜」とのこと",
        "ゲームが大好き。\n特にドラクエをこよなく愛しており、2018年の夏休みは約200時間をドラクエに費やした。\n他にもピアノや海外旅行や読書など様々な趣味がある。"
    ]

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    // セル数を指定
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return nameList.count
    }

    // セルの操作
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "nameCell", for: indexPath)
        // セルに名前を表示
        cell.textLabel?.text = nameList[indexPath.row]
        
        return cell
    }
    
    // セルを押された時の処理
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        // 押されたセルに対応する名前と趣味を遷移先に渡す変数に格納する
        // 名前
        giveName = nameList[indexPath.row]
        // 趣味
        giveHobby = hobbyList[indexPath.row]
        
        // 画面遷移の実行
        performSegue(withIdentifier: "showDetails", sender: nil)
    }
    
    // 遷移前に動作する処理
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // 行き先の確認と遷移先画面が正しいかの確認
        guard segue.identifier == "showDetails", let nextVC = segue.destination as? ViewController else {
            return
        }
        // 遷移先に値を渡す
        nextVC.receiveName = giveName
        nextVC.receiveHobby = giveHobby
    }

}
