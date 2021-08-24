# README

# アプリの名前  
  Vaccination_Register  

## 概要  
  ワクチンを接種する人たち（ユーザー）は事前に個人情報を登録し、アプリケーションが自動的に個人番号を生成する。会場の担当者（別画面からログインするユーザー）がフォームへこの個人番号を入力しボタンを押し、接種済みの登録をする。また、リアルタイムで登録者数が表示出来る。
  あえて一つのアプリケーションに2つの機能を実装することにより実際の現場で発生する費用を抑え、顧客の予算をよりかなえやすくすることが出来る。
  
## 本番環境(デプロイ先 テストアカウントとID)  
  デプロイ先:  
  テストアカウント:
  
## 制作背景(DEMO)
  新型コロナウィルスのワクチン接種をした人の登録が非効率的であり、課題になっていることを知った。会場で担当者が接種した人の個人情報を一人ずつ登録しており、これが原因で接種済みの人の正確な数がわかり辛いようである。
  この課題が、今回このアプリケーションを制作した背景である。
  国内の経済を安定させるために、新型コロナウィルスのワクチン接種は必須である。その管理をするアプリケーションはどんな人にも使いやすいものにしたいという思いでデザインをした。

## 工夫したポイント
  * シンプルな配置により、直感的に操作が出来るようにした
  * 文字を大きくし、誰でも見やすく表示した
  * エラーメッセージを日本語化した

## 今後の課題や実装したい機能
  * 新規登録画面をウィザード式にする  
  * お問い合わせフォームの実装(自動AI)
  * レスポンシブ対応にする（pc以外からも登録しやすくする）
  * Twitterと連携し、ワクチン接種についてのツイートをリアルタイムに表示する
  * セキュリティを強化する

## DB設計
  


## users テーブル

| Column                        | Type     | Options                  |
| ----------------------------- | -------- | ------------------------ |
| name                          | string   | null: false              |
| name_reading                  | string   | null: false              |
| encrypted_password            | string   | null: false              |
| address                       | text     | null: false              |
| phone_number                  | string   | null: false              |
| email                         | string   | null: false, unique: true|
| datetime                      | date     | null: false              |
| blood_type_id                 | integer  | null: false              |
| body_weight                   | integer  | null: false              |
| height                        | integer  | null: false              |
| body_temperature              | integer  | null: false              |
| allergy_id                    | integer  | null: false              |
| chronic_condition_id          | integer  | null: false              |
| venue_id                      | integer  | null: false              |
| public_uid                    | string   | null: false, unique: true|


### Association
has_one :registration


## registrations テーブル

| Column                        | Type       | Options                  | 
| ----------------------------- | ---------- | -------------------------|
| user                          | references | foreign_key: true        |    



### Association
belongs_to :users



  