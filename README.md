# アプリケーション名
CookDiary

# アプリケーション概要
自身のレシピを記録したり、他人のレシピも共有できます。
また冷蔵庫の食材を入力すると人気４位までのレシピを提案してくれます。

# URL
https://cookdiary.onrender.com

# テスト用アカウント
- Basic認証ID：admin<br>
- Basic認証アカウント：3333<br>
#### ユーザー1️⃣
- メールアドレス：1234@1234<br>
- パスワード：test1234<br>
#### ユーザー2️⃣
- メールアドレス：5678@5678<br>
- パスワード：test5678


# 利用方法
## レシピ投稿
1.トップページ（一覧ページ）のヘッダーから新規登録を行う<br>
2.ヘッダーの「投稿する」ボタンからレシピ投稿を押す<br>
3.レシピ内容（レシピ名、写真、材料・作り方orURL、メモ）を入力し、投稿する

## その他機能
1.検索から"CookDiary"に投稿されたレシピの検索と食材名から楽天の人気レシピ検索できる。<br>
2.レシピ詳細画面からコメント、いいねがつけられる。マイページでは投稿したレシピといいねしたレシピが一覧で表示される。

# アプリケーションを作成した背景
家事をする中で献立を考える負担を感じ、周囲でも同様の声が多く、嫌いな家事ランキングでも「料理」は常にトップであることが判明しました。またインターネットやレシピアプリ、SNSなどレシピの情報も多く、過去に作ったレシピを探すのにも時間を割いていると感じました。
そのため、自身のレシピを記録し共有できるアプリを開発し、さらに冷蔵庫の中の食材からレシピを検索する機能を取り入れることにしました。

# 洗い出した要件
[![Image from Gyazo](https://i.gyazo.com/2c666f73f584b86bdb6d022643ce54bf.png)](https://gyazo.com/2c666f73f584b86bdb6d022643ce54bf)

# 実装した機能についての画像やGIFおよびその説明
### ユーザー新規登録
[![Image from Gyazo](https://i.gyazo.com/385445cda943fd7d8d427652c58032b2.gif)](https://gyazo.com/385445cda943fd7d8d427652c58032b2)

### レシピ投稿
[![Image from Gyazo](https://i.gyazo.com/453b85e87bdea5cfdd4844d8bda5ca20.gif)](https://gyazo.com/453b85e87bdea5cfdd4844d8bda5ca20)

### マイページ
##### マイページはヘッダーにある「名前」を押す
[![Image from Gyazo](https://i.gyazo.com/84b5fa029ebc2f260f0be648fdbf9586.gif)](https://gyazo.com/84b5fa029ebc2f260f0be648fdbf9586)

### 投稿者ページ
##### 投稿者ページはレシピの「投稿者名」を押すとその人のマイページに遷移する
[![Image from Gyazo](https://i.gyazo.com/eaa0739f3dbc75ac34f0168342529c55.gif)](https://gyazo.com/eaa0739f3dbc75ac34f0168342529c55)

# データベース設計
[![Image from Gyazo](https://i.gyazo.com/62961aa20486d92a1159f68bb10c17b0.png)](https://gyazo.com/62961aa20486d92a1159f68bb10c17b0)

# 画面遷移図
[![Image from Gyazo](https://i.gyazo.com/7ee41274c558268f190aaaed9419612c.png)](https://gyazo.com/7ee41274c558268f190aaaed9419612c)

# ローカルでの動作方法
以下のコマンドを順に実行<br>
% git clone https://github.com/honami-f/CookDiary.git<br>
% cd CookDiary<br>
% bundle install

# 工夫したポイント
・見た目のデザインをこだわりました。見やすいように余白や統一感を意識して作成しました。<br>
・レシピの詳細画面がなるべく画面上に収まるように画像とレシピ内容を横並びに配置しました。また文字が見辛くならないように縮小されたら縦並びになります。<br>
・既存のレシピサイトと差別化を図るため、参考にしたレシピのURLを追加する項目を作成しました。<br>
・冷蔵庫にあるもので作れるレシピを提案できるよう、楽天レシピAPIを導入して、入力した食材を使った人気のレシピTOP４を表示される機能を実装しました。

# 改善点
URLをクリックしたらページへ遷移するようにしたい。