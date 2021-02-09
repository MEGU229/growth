# ✨アプリ名✨ 
# GROWTH

<img width="800" alt="TOPページ" src="https://gyazo.com/4918898de84afc9047760e69b143b50c.jpeg">

# 📘 概要
 【権限を持つユーザーのみマニュアルや共有したい事を投稿でき、投稿したものがTOPページに一覧表示される】
 
 <img width="800" alt="投稿" src="https://gyazo.com/c8449972293fb88bec07741ac0f074be.jpeg">
 
 【投稿者は投稿したものを編集・削除ができる】
 
 ＊編集＊

 <img width="800" alt="編集" src="https://gyazo.com/8431efc5168b5f4f6e1b600f6b14eb7c.jpeg">


 ＊削除＊

 <img width="800" alt="削除" src="https://gyazo.com/6e35e0e66b561df2b4f5f30db3cd4395.jpeg">

 
 【投稿されたものにはログインをしていればコメントや、お気に入り登録ができる】
 
 ＊コメント＊
 
 <img width="800" alt="コメント" src="https://gyazo.com/616e6a38f5d7809e0f2c826cf6e3dea3.jpeg">
  
 ＊お気に入り登録＊
 
 <img width="800" alt="お気に入り" src="https://gyazo.com/d1ccffdbe70b7af7e8c317cfafa2a6da.jpeg">
 
 【権限を持つユーザーはマイページで自分が投稿したものが一覧表示される】
 
 <img width="800" alt="投稿一覧" src="https://user-images.githubusercontent.com/74957333/107318463-2f142500-6ae0-11eb-9acf-47d037772ca7.png">
 
 【お気に入り登録をする事でマイページで一覧表示される】
 
 <img width="800" alt="お気に入り一覧" src="https://user-images.githubusercontent.com/74957333/107318482-3a675080-6ae0-11eb-90a2-9dc0b4e508cc.png">

# 📘 本番環境
## 🌐URL
 
 https://growth-32589.herokuapp.com/

 【権限あり】
 
 アドレス
 aaaaa@aaaaaaaaaa
 
 パスワード
 m11111

 【権限なし】
 
 アドレス
 bbbbb@bbbbbbbbbb
 
 パスワード
 m22222

# 📘 制作背景(意図)
 前職で店長をしていた際、生産性を上げる課題があり、教育の時間を削減しスキルアップができるツールが欲しいと思い制作

# 📘 工夫したポイント
 【ログインしているかはっきりわかるように、ログインしていない時のみ大きな画像を表示】
 
 ＊ログインしていない時＊
 
 <img width="800" alt="TOPページ" src="https://gyazo.com/4918898de84afc9047760e69b143b50c.jpeg">
 
 ＊ログインしている時＊
 
 <img width="800" alt="TOPページ" src="https://gyazo.com/86224141e7d39a01ae0ade84e1580fc0.jpeg">

 【共有を投稿できる人を限定する為に登録時に権限をつけた】
 
 ※店長から販売リーダーまで権限あり
 
 <img width="800" alt="権限" src="https://gyazo.com/f5617b3b62f8c3cb6a30e297bb1ae794.jpeg">
 
 【投稿の権限を持っているユーザーと、そうでないユーザーとで、ログイン時のボタンの種類を変えた】
 
 ＊投稿権限あり＊
 
 <img width="800" alt="権限あり" src="https://gyazo.com/5a5d27c5d8bb0e77996e06e9bfc0f9fe.jpeg">
 
 ＊投稿権限なし＊
 
 <img width="800" alt="権限なし" src="https://gyazo.com/a72e6d029ac9a634765911125d7a98d9.jpeg">

 【お気に入り登録の実装】
 
 ※概要参照
# 📘 使用技術
 HTML・CSS・Ruby・Ruby on Rails・SQL・Git・ GitHub

# 📘 今後実装したい機能
 今後実装したい機能はユーザー毎にマイページにマニュアルを表示
 
 チェックボックスを作り進捗がすぐにわかるようにする





# テーブル設計

## 😃 users テーブル

|      Column      |  Type  |         Options         |
| ---------------- | ------ | ----------------------- |
|       name       | string |      null: false        |
|       email      | string |null: false, unique: true|
|encrypted_password| string |       null: false       |
|    position-id   | integer|       null: false       |

### Association

- has_many :manuals
- has_many :comments
- has_many :favorites
- has_many :fav_manuals
- belongs_to :position

## 📖 manuals テーブル

|      Column      |  Type  |     Options      |
| ---------------- | ------ | ---------------- |
|       title      | string |   null: false    |
|       text       |  text  |   null: false    |

### Association

- has_many :comments
- has_many :favorites
- belongs_to :user

## 🖋 comments テーブル

|      Column      |   Type   |       Options       |
| ---------------- | -------- | ------------------- |
|       text       |   text   |     null: false     |
|       user       |references|  foreign_key: true  |
|      manuals     |references|  foreign_key: true  |

### Association

- belongs_to :user
- belongs_to :manual

## ⭐️ favorites テーブル

|   Column   |   Type   |     Options     |
| ---------- | -------- | --------------- |
|    user    |references|foreign_key: true|
|    manual  |references|foreign_key: true|

### Association

- belongs_to :manual
- belongs_to :user
