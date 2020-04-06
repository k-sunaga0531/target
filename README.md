# README

## Name（アプリケーション名称）
### Target

## Overview（概要）
### 自らと他者の目標達成度を比較できるアプリケーション
一つのグループの中で、各人が目標(Target)を設定し、達成したらカウントを上昇させる。

## Production background（製作背景）
### 三日坊主を防ぐため

一般的なToDoアプリは、自らの記録しか表示ができない。
私は、そこに問題点が２つあると考えた。
一つは、個人の意志に依存するため三日坊主にも繋がりやすいこと。
二つめは、自分の努力を客観的に評価が出来ないこと。

そこで他者の記録も表示をすれば、客観的な評価と、自分を律することに繋がるのではないかと考えた。
他者の記録と比較をすることで、自らの記録の優劣を知ることができる。
諦めそうになった時、仲間の頑張りを見て、もう一度頑張ろうと思うことができる。

そうした効果を狙って、Targetを製作した。

## Demo

## Future plans


## DB
### usersテーブル

|Column|Type|Options|
|------|----|-------|
|user_name|string|null: false|
|email|string|null: false, unique: true|
|password|string|null: false, unique: true|

#### Association
- has_many :groups_users
- has_many :groups, through: :groups_users
- has_many :targets


### groupsテーブル

|Column|Type|Options|
|------|----|-------|
|group_name|string|null: false|

#### Association
- has_many :groups_users
- has_many :users, through: :groups_users
- has_many :targets


### group_usersテーブル

|Column|Type|Options|
|------|----|-------|
|groups_id|integer|foreign_key: true, null: false|
|user_id|integer|foreign_key: true, null: false|


#### Association
- belong_to  :user
- belong_to :group


### targetersテーブル

|Column|Type|Options|
|------|----|-------|
|targeter_name|string|null: false|
|counts|integer|null: false|
|user_id|integer|foreign_key: true, null: false|
|groups_id|integer|foreign_key: true, null: false|

#### Association
- belong_to :user
- belong_to :group
