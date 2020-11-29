# README
# ※現在作成中

## ※現在作成中
## アプリ概要
- 店舗の価格比較サイトです。店舗別の価格を入力する事で他店舗との価格比較をする事が出来ます。
- ※現在作成中です。

## コンセプト
- 店舗別で価格比較出来るサイトがあったら便利だと思い作成しました。
- きっかけは母親の「価格比較サイトあるけど田舎だと店舗情報少ないから自分たちで登録して共有出来たら便利なのにね」という一言でした。少しでも主婦の味方になれば幸いです。

## :paperclip: 主な使用言語
<a><img src="https://user-images.githubusercontent.com/39142850/71774533-1ddf1780-2fb4-11ea-8560-753bed352838.png" width="70px;" /></a> <!-- rubyのロゴ -->
<a><img src="https://user-images.githubusercontent.com/39142850/71774548-731b2900-2fb4-11ea-99ba-565546c5acb4.png" height="60px;" /></a> <!-- RubyOnRailsのロゴ -->
<a><img src="https://user-images.githubusercontent.com/39142850/71774618-b32edb80-2fb5-11ea-9050-d5929a49e9a5.png" height="60px;" /></a> <!-- Hamlのロゴ -->
<a><<img src="https://user-images.githubusercontent.com/39142850/71774644-115bbe80-2fb6-11ea-822c-568eabde5228.png" height="60px" /></a> <!-- Scssのロゴ -->
<a><img src="https://user-images.githubusercontent.com/39142850/71774768-d064a980-2fb7-11ea-88ad-4562c59470ae.png" height="65px;" /></a> <!-- jQueryのロゴ -->
<a><img src="https://user-images.githubusercontent.com/67769876/91068711-a0196a80-e66f-11ea-9e03-92d97eef5736.png" height="65px;" /></a> <!-- herokuのロゴ -->

## 機能紹介

## 工夫したポイント

## 課題や今後実装したい機能

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