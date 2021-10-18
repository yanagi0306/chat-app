# テーブル設計

## users　テーブル

| Column             | Type   | Options     |
| ------------------ | ------ | ----------- |
| name               | string | null:false  |
| email              | string | null:false  |
| encrypted_password | string | null:false  |


### Association

- has_many :room_users
- has_many :rooms, through:  :room_users
- has_many :messages

## rooms　テーブル

| Colum              | Type   | Options     |
| ------------------ | ------ | ----------- |
| name               | string | null:false  |

### Association

- has_many :room_users
- has_many :users, through: :room_users
- has_many :messages

## room_users テーブル

| Colum              | Type       | Options                        |
| ------------------ | ---------- | ------------------------------ |
| user               | references | null: false, foreign_key: true |
| room               | references | null: false, foreign_key: true |

### Association

- belong_to :room
- belong_to :user

## messages　テーブル

| Colum              | Type       | Options                        |
| ------------------ | ---------- | ------------------------------ |
| content            | string     |                                |
| user               | references | null:false,foreign_key:true    |
| room               | references | null:false,foreign_key:true    |

### Association

- belong_to :user
- belong_to :room
