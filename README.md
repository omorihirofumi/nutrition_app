nutrition_app
====
<br>

# Overview
ダイエットの食事管理アプリ

# Description
以下の機能を実装しています。
* ユーザー新規登録/ログイン
* トップページ
  * アスリートの名言をランダムで紹介
* プロフィール入力・編集機能
  * 誕生日、性別、身長、体重、開始体重、目標体重、活動レベルを入力させる
* マイページ
  * 入力したプロフィールを基に、1日の総消費カロリーを計算し、そこから総摂取カロリーを計算する。
  * 総摂取カロリーは3種類のコースから選択でき、三大栄養素である「タンパク質」「糖質」「脂質」をどれだけ摂取すれば良いか表示する。
    ①ハード(3kg減/月) ②ノーマル(2.1kg減/月) ③イージー(1.3kg減/月)
  * 実際に摂取した食べ物の種類、三大栄養素のグラム数を入力させ、これまで入力した物と併せて表示する。
  * 体重推移のわかるグラフ表示。グラフの上限値は開始体重、下限値は目標体重としている。(※日付、体重入力は未実装)
* 豆知識
  * ダイエットに役立つ知識を掲載している
* ページ共通
  * 各ページに遷移するリンクを含んだヘッダー機能実装

# Demo
## マイページ
[![Image from Gyazo](https://i.gyazo.com/39cefff3ea6f0fc1eebd557ed430b239.gif)](https://gyazo.com/39cefff3ea6f0fc1eebd557ed430b239)

## 出品
[![Image from GIF](https://user-images.githubusercontent.com/59793675/77245903-b60ca480-6c65-11ea-88d7-fabb667ee903.gif)

<img src="https://user-images.githubusercontent.com/59793675/77244462-43e19300-6c58-11ea-9cec-b5aff5f1431b.gif" width="800" height="800">

# Usage
* テストアカウントでログイン
  * トップページを始めとした各ページから出品ボタン押下→商品情報入力→商品出品
  * トップページの新規商品一覧→商品選択→商品購入

# Issue
## URL
http://52.197.205.247/

## Basic authentication
ID：admin  
Pass：2222  

## Test account
* 
メールアドレス：test@test.com  
パスワード：test123  



<br>

# データベース設計

## usersテーブル
|Column|Type|Options|
|------|----|-------|
|email|string|null: false, unique: true, default: ""|
|password|string|null: false, default: ""|


### Association
- has_one :profile