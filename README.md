# ✨アプリ名✨ 
# GROWTH

# 📘 概要
 権限を持つユーザーのみマニュアルや共有したい事を投稿できる
 投稿されたものには誰でもコメントをしたり、お気に入り登録ができる
 またお気に入り登録をする事でマイページで一覧表示ができる

# 📘 本番環境
 URL
 
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
 共有を投稿できる人を限定する為に登録時に権限をつけた
 お気に入り登録の実装
 権限を持っているユーザーと、そうでないユーザーとで、ログイン時のボタンの種類を変えた

# 📘 使用技術
 HTML・CSS・Ruby・Ruby on Rails・SQL・Git・ GitHub

# 📘 今後実装したい機能
 今後実装したい機能はユーザー毎にマイページにマニュアルを表示
 チェックボックスを作り進捗がすぐにわかるようにしたい





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
