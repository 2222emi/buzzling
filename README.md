# 投稿アプリケーションを模したSNSアプリケーション制作

## 概要
投稿したものに反応が示せるような投稿アプリ

## 制作背景
・今まで学んできた物の集大成として<br>
・さらなる技術力向上を目指して<br>

## 開発環境
・MacOS(catalina 10.15.7)<br>
・VScode ver 1.53.2<br>
・DB MYSQL<br>

## 開発言語
| 開発言語 | バージョン  |
|:-------:|:---------:|
| ruby    | 2.5.1     |
| rails   | 5.2.3     |
| html    |           |
| css     |           |

## DEMO
<img width="1440" alt="スクリーンショット 2021-03-13 17 05 22" src="https://user-images.githubusercontent.com/74222306/111023849-aa8a2e80-841e-11eb-93be-39c15f872006.png">
<img width="1441" alt="スクリーンショット 2021-03-12 16 12 25" src="https://user-images.githubusercontent.com/74222306/110948341-92fe6780-8384-11eb-9119-cf72be85cbbb.png">
<img width="1440" alt="スクリーンショット 2021-03-12 16 16 40" src="https://user-images.githubusercontent.com/74222306/110948472-b7f2da80-8384-11eb-8e3f-898032a212ba.png">

## DB設計
### tweetsテーブル
| Column | Type | Options |
|:------:|:----:|:-------:|
| text   | text | null:ture |
| image | text | null:ture |
| user_id | integer | null:ture |

### usersテーブル
| Column | Type | Options |
| :-----:|:----:|:-------:|
| nickname | verchar | null:ture |

### commentsテーブル
| Column | Type | Options |
| :-----:|:----:|:-------:|
| text | text | null:ture |
| user_id | integer | null:ture |
| tweet_id | integer | null:ture |


## 実装機能
・新規投稿機能(投稿者のみ可能)<br>
・投稿削除機能(投稿者のみ可能)<br>
・投稿編集機能(投稿者のみ可能)<br>
・deviseを用いたユーザー登録機能<br>
・コメント機能(ログイン時のみ可能)<br>
・検索機能<br>
・ページネーション機能<br>

## 実装予定機能
・AWSを用いた本番環境へのデプロイ<br>
・JavaScriptを用いた非同期通信の実装<br>
・ユーザーのフォロー機能<br>
・投稿に対してのお気に入り機能<br>
・動画投稿機能<br>

## 工夫したポイント
・色味を青と白とグレーをメインにすることによって爽やかでスタイリッシュな印象にした。<br>
・投稿のテキスト入力時に枠が伸びるようにした。<br>
・編集、削除、詳細は近くに配置して、わかりやすいようにした。<br>
・新しいツイートが上に来るようにした。<br>

