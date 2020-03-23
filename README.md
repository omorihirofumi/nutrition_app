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

# note
## 補足知識
* 1kg = 7200kcal 
  例：摂取カロリー2000kcal - 消費カロリー2720kcal = -720kcal × 10日間 → -7200kcal(1kg減)
* カロリーのある栄養素(三大栄養素)
  ・タンパク質 4kcal/1g 例：肉、卵、魚など
  ・糖質 4kcal/1g 例：米、パン、パスタなど
  ・脂質 9kcal/1g 例：バター、肉の脂身、
* リバウンドしづらく、筋肉が落ちにくい三大栄養素の摂取カロリーバランス：タンパク質40%、糖質40%、脂質20%
* 本アプリではカロリー制限による「脂質制限」を採用しています。

## 工夫した点
* 減量モードを3種類用意しました。自分のスタイルにあった物を都度選択して頂く
  ①ハード(3kg減/月)
  ②ノーマル(2.1kg減/月)
  ③イージー(1.3kg減/月)
* アスリートの名言集をランダムで表示。効果としてモチベーションを上げて頂く。
  またフェイドアウト機能を実装しているので、時間内に文字を読むことで集中力向上効果を狙っています。
* ダイエットに役立つ豆知識を掲載。

## 今後やりたい実装
* レベルアップ機能実装。下記3点を行うと経験値が入る仕様
  ①ログイン
  ②食べ物入力
  ③体重減少
  レベルアップの特典として、レベルに応じて見れる豆知識が増える。
* カレンダー機能実装。日付を選択すればその日の摂取した物がわかるようにしたい。
* 日毎の体重入力機能。グラフにて表示したい。




# Demo
## プロフィール入力
<img src="https://user-images.githubusercontent.com/59793675/77247616-363b0600-6c76-11ea-9ba5-7217b91b5ad6.gif" width="640" height="480">

## マイページ
<img src="https://user-images.githubusercontent.com/59793675/77247632-5074e400-6c76-11ea-8201-ac0802f059bc.gif" width="640" height="480">

# Usage
* テストアカウントでログイン
  * プロフィール入力→マイページ→減量モード選択→食べ物入力
  * 豆知識閲覧

# Issue
## URL
http://52.194.46.217/

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
- has_many :balancesheets

## profilesテーブル
|Column|Type|Options|
|------|----|-------|
|birthday|integer|null: false|
|sex|string|null: false|
|height|float|null: false|
|weight|float|null: false|
|startweight|float|
|targetweight|float|
|activelevel|string|
|user_id|integer|foreign_key: true|

### Association
- belongs_to :user

## balancesheetsテーブル
|Column|Type|Options|
|------|----|-------|
|ingredient|string|null: false|
|protein|float|
|carbo|float|
|fat|float|
|user_id|integer|foreign_key: true|

### Association
- belongs_to :user