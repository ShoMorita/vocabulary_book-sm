# README

# アプリケーション名
  vocablary book

# URL
  https://vocabulary-book-35574.herokuapp.com/

# テスト用アカウント
  1.mail:test@com  password:morimori2929

# 利用方法
  ・単語帳を作成
  ・隙見時間に見る
  ・自分や他の人が作った単語帳検索機能あり
  ・他の人が作った単語帳でお気に入りがあれば、マイページへ複製することができる。

# 目指した課題解決
このアプリケーションを通じて、日々の生活に追われている方達が、少しの隙間の時間を活用し勉強（暗記）などがしやすくなればと作成しています。
・持ち歩くのが大変！ → 携帯ひとつで大丈夫！
・単語帳作る手間が! → 他の方が作成した単語帳を共有し活用できます！
・他の方が作成したお気に入りの単語帳! → マイページへ複製できます！
・単語帳の書き方がわからない！ → 他の方が作成した単語帳を参考にできます！

# 洗い出した要件
１	単語録検索	
簡単に誰でも登録した自身の単語帳または他の人が作成した単語帳が検索できるようにする。	
単語帳を作成した際に、作成した本人が他の人と共有するかを指定した上で、共有したもののみ、ずべての人で共有できるようにする。	"
・単語帳が登録され、共有ボタンを選択されていることが前提
・単語帳のキーワードを検索できる欄を設ける
・条件に該当する単語帳を出力するページの作成を行い表示する。"

２	他の人が作成した単語帳の複製機能
他の人が作成した単語帳でいいのがあったら、手早く複製しマイページで保存できるようにする。	
単語帳を作成した際に、作成した本人が他の人と共有するかを指定した上で、共有したもののみ、複製できるようにする。	"
・単語帳が登録され、共有ボタンを選択されていることが前提
・検索した単語帳をクリックし、単語帳の詳細ページへ遷移
・詳細ページにて複製ボタンを押すとマイページに複製される。"

# 実装した機能についての画像やGIFおよびその説明

# 実装予定の機能
  単語録検索,単語帳の複製機能,チャットルーム

# データベース設計
  ER図

  テーブル設計

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

# ローカルでの動作方法
Ruby / Ruby on Rails / MySQL / GitHub / Heroku / Visual Studio Code /  