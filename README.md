# README

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

| Column                        | Type       | Options                　| 
| ----------------------------- | ---------- | -------------------------|
| user                          | references | foreign_key: true        |    



### Association
belongs_to :users



# Application_name
 This application' name is Vaccination_Register.  

 ## Overview
 
 ## Production environment and testing accounts  

 ## Why producing this App?   

 ## The points that thought and work out  

 ## Development environment  

 ## future issue and function which want to implement 