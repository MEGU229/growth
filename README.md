
# テーブル設計

## users テーブル

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

## manuals テーブル

|      Column      |  Type  |     Options      |
| ---------------- | ------ | ---------------- |
|       title      | string |   null: false    |
|       text       |  text  |   null: false    |

### Association

- has_many :comments
- has_many :favorites
- belongs_to :user

## comments テーブル

|      Column      |   Type   |       Options       |
| ---------------- | -------- | ------------------- |
|       text       |   text   |     null: false     |
|       user       |references|  foreign_key: true  |
|      manuals     |references|  foreign_key: true  |

### Association

- belongs_to :user
- belongs_to :manual

## favorites テーブル

|   Column   |   Type   |     Options     |
| ---------- | -------- | --------------- |
|    user    |references|foreign_key: true|
|    manual  |references|foreign_key: true|

### Association

- belongs_to :manual
- belongs_to :user