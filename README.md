# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...


## usersテーブル

|Column|Type|Options|
|------|----|-------|
|user_name|string|null: false|
|email|string|null: false, unique: true|
|password|string|null: false, unique: true|

### Association
- has_many :groups_users
- has_many :groups, through: :groups_users
- has_many :targets


## groupsテーブル

|Column|Type|Options|
|------|----|-------|
|group_name|string|null: false|

### Association
- has_many :groups_users
- has_many :users, through: :groups_users
- has_many :targets


## users_groupsテーブル

|Column|Type|Options|
|------|----|-------|
|user_id|integer|foreign_key: true, null: false|
|groups_id|integer|foreign_key: true, null: false|

### Association
- belong_to  :user
- belong_to :group


## targetersテーブル

|Column|Type|Options|
|------|----|-------|
|targeter_name|string|null: false|
|counts|integer|null: false|
|user_id|integer|foreign_key: true, null: false|
|groups_id|integer|foreign_key: true, null: false|

### Association
- belong_to :user
- belong_to :group
