# アプリケーション名

OTOQS

# アプリケーション概要

このアプリケーションは、友達紹介コードやクーポンといった「特典」が記録・リマインド・共有しやすくするアプリケーションです。

以降、友達紹介コードやクーポンといった「特典」の情報をまとめて ”トクテン” と表現します（要件定義書内の表現も含む）。

> 「友達紹介コード」とは？<br><br>
> 友達紹介コードとは、あるサービスの提供者が、その利用者へ与える個別コードの一つです。この個別コードを使って既存の利用者が新しい利用者にそのサービスを紹介すると、紹介した側と紹介した側の両方に特典（ポイント獲得、キャッシュバックなど）が与えられることが一般的です。<br><br> [![Image from Gyazo](https://i.gyazo.com/dfc1295580a8c31ec0ed40e10466f75c.gif)](https://gyazo.com/dfc1295580a8c31ec0ed40e10466f75c) <br><br> [引用元：TECH CAMP](https://tech-camp.in/)

# URL

アプリケーション URL：https://otoqs.onrender.com

# テスト用アカウント

|           Category            |      Value       |
| :---------------------------: | :--------------: |
|    Basic Authentication ID    |       dzs        |
| Basic Authentication Password |      40544       |
|           user_name           |     client1      |
|             email             | client1@mail.com |
|           password            |     287k404      |

# 利用方法【GIF】

このアプリケーションの使い方は、主に 3 つあります。

- トクテンの【記録】
- トクテンの【リマインド】
- トクテンの【共有】

## 使い方 ①：トクテンの記録

[![Image from Gyazo](https://i.gyazo.com/061b21ded7ab16251d3165c7e04ca8fb.gif)](https://gyazo.com/061b21ded7ab16251d3165c7e04ca8fb)

1. 新規登録/ログイン画面からアカウント作成/ログインする
2. トップページ画面下中央の「+」ボタンを押す
3. 記録したいトクテンの情報を項目ごとに入力する
4. 項目を入力し終えたら「保存」ボタンを押す
5. 入力内容に問題がなければ、記録したトクテンの一覧を見ることができる

## 使い方 ②：トクテンのリマインド

[![Image from Gyazo](https://i.gyazo.com/d4b7fbb4d0907c5ee83a7d6f14197c4b.gif)](https://gyazo.com/d4b7fbb4d0907c5ee83a7d6f14197c4b)

1. トクテンの新規保存/編集時に「日付」を設定する
2. トクテン一覧（トップページ）から保存したトクテンに設定した日付を確認できる

## 使い方 ③：トクテンの共有

### ③-A：共有する側（ログイン中のユーザー自身）

[![Image from Gyazo](https://i.gyazo.com/186e5390ebcf1c08d26392c85b7d49bb.gif)](https://gyazo.com/186e5390ebcf1c08d26392c85b7d49bb)

1. 画面右上の「マイトクテンをシェア」ボタンを押す
2. 上から「マイトクテンの URL」ボタン・区切り線・「限定公開」に設定したトクテン一覧、の 3 つが表示される
3. 「マイトクテンの URL」ボタンを押すと、マイページ詳細の URL（今いるページのアドレスバーに表示されている URL）をコピーできる
4. 3 でコピーした URL を URL リンク共有可能なサービスにペーストすれば、「限定公開」に設定したトクテンのみを共有できる

### ③-B：共有される側（ログイン中の他ユーザー + 未ログインユーザー）

[![Image from Gyazo](https://i.gyazo.com/9f2d053e9068102910f5ec35696974f7.gif)](https://gyazo.com/9f2d053e9068102910f5ec35696974f7)

1. 共有された「マイトクテンの URL」を開くと、共有する側が「限定公開」に設定したトクテンをすべて閲覧できる
2. トクテン右側の「コピー」ボタンを押すと、そのトクテンを利用するためのテキストコードや URL をコピーできる

# アプリケーションを作成した背景

「新しく利用したい・今後も愛用し続けたいサービスは、そのサービスが提供する特典をムダなく使いこなして少しでも ”おトク” に使いたい」という欲求が、このアプリケーションを作成するきっかけでした。この欲求は経済的余裕の少ない学生〜若手社会人にも共通しているのではないかと大学 1 年生の頃からずっと思っていました。そこで、この欲求が満たせないことを問題として捉え、その課題を解決できるアプリケーションを企画し始めました。

まず、この課題の真の原因に対する仮説を 2 つ考えました。一つ目は「本来なら友達紹介コードやクーポンを使ってサービスをおトクに利用できる資格があるにも関わらずその特典を利用しないことが多いのは、その特典情報が分散していて特典の存在を忘れてしまっていることにある」という仮説です。二つ目は「友達紹介コードやクーポンを共有してまでサービスを利用する/させる行為に対して格好悪い・恥ずかしいと感じてしまい、共有しづらい心理がある」という仮説です。

そして、これらの真因を解決するために、特典情報（友達紹介コードやクーポンなど）を記録・リマインド・共有できる機能や、見た目や操作性にストレスを感じない UI を持つアプリケーションを開発することにしました。それが、”トクテン” 情報集約アプリ『OTOQS』です。

# あらい出した要件

[要件定義書](https://calm-pizza-1c8.notion.site/OTOQS-5e4b159eb15c4ff9a9adba3f7d3a6694?pvs=4)

# 実装予定の機能

今後、次の機能を実装します。

❇️  ユーザーの【フォロー】機能

- 「ユーザーアイコン」を設定可能に
- 「ユーザーフォロー」機能を新規追加

❇️  トクテンの【まとめ・検索】機能

- 公開範囲（status）の選択肢に「公開」を新規追加
- 「トクテンまとめページ（ or サイト）」を新規追加
- 公開範囲が「公開」のトクテン情報は「トクテンまとめサイト」内で全ユーザー分一覧表示される
- 一覧表示されたトクテン情報を、不特定多数のユーザーが共有・検索・利用できる

# データベース設計【ER 図】

[![Image from Gyazo](https://i.gyazo.com/215eb3ae2204d9b86d9980ed38a40d91.jpg)](https://gyazo.com/215eb3ae2204d9b86d9980ed38a40d91)

# 画面遷移

（更新中）

# 開発環境

|    Category    |        Technology Stack        |
| :------------: | :----------------------------: |
|    Frontend    |    JavaScript, Tailwind CSS    |
|    Backend     |      Ruby, Ruby on Rails       |
| Infrastructure |             render             |
|    Database    |           PostgreSQL           |
|      Test      |          RSpec, MySQL          |
|     CI/CD      |             GitHub             |
| Support tools  | Notion, Figma, DALL-E(Chatgpt) |

# ローカルでの動作方法

```zsh
% cd

% cd (Githubにアップロード済みの本アプリケーションをクローンしたいディレクトリ名)

% git clone https://github.com/DaiC-S/otoqs.git

% cd otoqs

% bundle install

% yarn install

% rails db:create

% rails db:migrate

% rails s
```

# 工夫したポイント

マイページの共有機能にこだわりました。具体的には、以下の 3 点にこだわりました。

- マイページの URL 末尾をユーザー名へ変更（デフォルトの URL 末尾はユーザー ID）
- ワンクリックでマイページの URL をコピーできる処理
- ユーザー自身かそれ以外のユーザーかでマイページの見える範囲を変更

なぜここにこだわったのかというと、他の SNS にこのアプリケーションのマイページ URL リンクが貼られることを想定して企画・開発したからです。

# 改善点

・ペルソナ（学生〜若手社会人）向けの洗練された見た目にしたい

・スマートフォンアプリ用へ変換したい

# 制作時間

約 1 ヶ月（2023-10-16~2023-11-15）

\*企画 → 要件定義 → 設計 → 開発 → テスト
