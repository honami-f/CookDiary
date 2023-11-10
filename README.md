# アプリケーション名
CookDiary

# アプリケーション概要
自身のレシピを記録したり、他人のレシピも共有できます。
また冷蔵庫の食材を入力するとおすすめのレシピを提案してくれます。

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

# アプリケーションを作成した背景
家事をする中で献立を考える負担を感じ、周囲でも同様の声が多く、嫌いな家事ランキングでも「料理」は常にトップであることが判明しました。またインターネットやレシピアプリ、SNSなどレシピの情報も多く、過去に作ったレシピを探すのにも時間を割いていると感じました。
そのため、自身のレシピを記録し共有できるアプリを開発し、さらに冷蔵庫の中の食材から献立を提案する機能を取り入れることにしました。

# 洗い出した要件
[![Image from Gyazo](https://i.gyazo.com/e36880b6a80ea41d5f32b41569a50356.png)](https://gyazo.com/e36880b6a80ea41d5f32b41569a50356)

# 実装した機能についての画像やGIFおよびその説明
### ユーザー新規登録
[![Image from Gyazo](https://i.gyazo.com/d2d98f66e381d08a8c5f57612de4a04b.gif)](https://gyazo.com/d2d98f66e381d08a8c5f57612de4a04b)

### レシピ投稿
[![Image from Gyazo](https://i.gyazo.com/94c52c86f73a2ae8359e59cca8cd8ebf.gif)](https://gyazo.com/94c52c86f73a2ae8359e59cca8cd8ebf)

### マイページ
##### マイページはヘッダーにある「名前」を押す
[![Image from Gyazo](https://i.gyazo.com/2d890a4f9a19d1e8c81c12a56646fe6a.gif)](https://gyazo.com/2d890a4f9a19d1e8c81c12a56646fe6a)

### 投稿者ページ
##### 投稿者ページはレシピの「投稿者名」を押すとその人のマイページに遷移する
[![Image from Gyazo](https://i.gyazo.com/25223847a95a7e6be19c495e929499b3.gif)](https://gyazo.com/25223847a95a7e6be19c495e929499b3)

# 実装予定の機能
現在、コメント機能を実装中。その他にお気に入り機能、タグ付け機能、検索機能も実装予定。
今後はAIを導入し、おすすめのレシピを提案する機能を実装予定。


# データベース設計
[![Image from Gyazo](https://i.gyazo.com/8ec9eec74b8010792196593973522935.png)](https://gyazo.com/8ec9eec74b8010792196593973522935)

# 画面遷移図
[![Image from Gyazo](https://i.gyazo.com/376dda4164ebce398cb60418a7169b76.png)](https://gyazo.com/376dda4164ebce398cb60418a7169b76)

# ローカルでの動作方法
以下のコマンドを順に実行<br>
% git clone https://github.com/honami-f/CookDiary.git<br>
% cd CookDiary<br>
% bundle install

# 工夫したポイント
・作った料理を記録することが目的なので必須項目を少なくしました。レシピを見て作ったものは材料・具材を記入しなくていいようにレシピURLを追加する欄を作成しました。写真も撮り忘れてしまうこともあるため任意項目としました。<br>
・レシピの詳細画面がなるべく画面上に収まるように画像とレシピ内容を横並びに配置しました。文字が見辛くならないように縮小されたら縦並びになります。

# 改善点
URLをクリックしたらページへ遷移するようにしたい。

# 制作時間
