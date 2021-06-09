# README

# テーブル設計

## usersテーブル

| Column              | Type    | Options                    |
| ----------          | ------  | ----------                 |
| nickname            | string  | null: false                |
| email               | string  | null: false, unique: true  |
| encrypted_password  | string  | null: false                |

### Association

- has_many  :subject


## subjectsテーブル

| Column              | Type          | Options           |
| ----------          | ------        | ----------        |
| user                | references    | foreign_key: true |
| title               | string        | null: false       | 
          
### Association

- belong_to  :user
- has_many  :contents

## contentsテーブル

| Column              | Type          | Options           |
| ----------          | ------        | ----------        |
| subject             | references    | foreign_key: true |
| title               | string        | null: false       | 
          
### Association

- belong_to  :subject
- has_many  :problem

## problemテーブル

| Column              | Type          | Options           |
| ----------          | ------        | ----------        |
| content             | references    | foreign_key: true |
| cover_paper         | text          | null: false       |
| back_cover          | text          | null: false       |
| key_word            | text          | null: false       | 
          
### Association

- belong_to  :content
















## itemsテーブル

| Column              | Type          | Options           |
| ----------          | ------        | ----------        |
| user                | references    | foreign_key: true |
| name                | string        | null: false       |
| description         | text          | null: false       |   <!-- 商品説明 -->
| category_id         | integer       | null: false       |   <!-- カテゴリー：Activehash -->
| status_id           | integer       | null: false       |   <!-- 商品状況：Activehash -->
| delivery_charge_id  | integer       | null: false       |   <!-- 配送料の負担：Activehash -->
| prefecture_id       | integer       | null: false       |   <!-- 発送元の地域：Activehash -->
| shipping_day_id    | integer       | null: false       |   <!-- 発送までの日数：Activehash -->
| selling_price       | integer       | null: false       |   
          
### Association

- belong_to  :user
- has_one  :buyer

## buyers
 Column               | Type          | Options           |
| ----------          | ------        | ----------        |
| user                | references    | foreign_key: true |
| item                | references    | foreign_key: true |

### Association

- belong_to  :user
- belong_to  :item
- has_one  :address

## address
 Column               | Type          | Options           |
| ----------          | ------        | ----------        |
| buyer               | references    | foreign_key: true |
| postal_code         | string        | null: false       |  <!-- 郵便番号 -->
| prefecture_id       | integer       | null: false       |  <!-- 都道府県 -->
| municipality        | string        | null: false       |  <!-- 市区町村 -->
| address             | string        | null: false       |  <!-- 番地 -->
| building_name       | string        |                   |  <!-- 建物名 -->
| phone_number        | string        | null: false       |  <!-- 電話番号 -->

### Association
- belong_to :buyer