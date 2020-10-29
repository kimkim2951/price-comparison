# README
# ※現在作成中

## アプリ概要
- 店舗の価格比較サイトです。店舗別の価格を入力する事で他店舗との価格比較をする事が出来ます。

## コンセプト
- 店舗別で価格比較出来るサイトがあったら便利だと思い作成しました。きっかけは母親の「価格比較サイトあるけど田舎だと店舗情報少ないから自分たちで登録して共有出来たら便利なのにね」という一言でした。少しでも主婦の味方になれば幸いです。


## usersテーブル
|Column|Type|Options|
|------|----|-------|
|nick_name|string|null: false, unique: true|
|email|string|null: false, unique: true|
|password|string|null: false|
### Association
- has_many :stores

## storesテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|references|null: false, foreign_key: true|
|name|string|null: false|
|store_type|integer|null: false|
|address|string|null: false|
|prefecture|integer|null: false|
|city|string|null: false|
|village|string||
|business_hours|string|null: false|
|rest_day|integer|null: false|
### Association
- has_many :items
- belongs_to :user

## itemsテーブル
|Column|Type|Options|
|------|----|-------|
|store_id|references|null: false, foreign_key: true|
|name|string|null: false|
|item_type|integer|null: false|
|price|integer|null: false|
|post_data|date|null: false|
|leaflet_image|string||
### Association
- belongs_to :store