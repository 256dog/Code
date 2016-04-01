# Debt Hell
> 某国に住んでいる友達がお金に困って、あるヤミ金融業者から 10 万円の借金をしたまま、全く返済していないといいます。この業者は、一週間ごとに 5% の利子を借金に加え、さらに借金の 1,000 円未満を切り上げます。

> n を入力したとき、n 週間後の借金の残高を出力し終了するプログラムを作成して下さい。n は 100 以下とします。

### Input
> 整数 n

### Output
> n 週間後の返済額

### Sample Input
    5
### Output for the Sample Input
    130000

### 問題URL
[http://judge.u-aizu.ac.jp/onlinejudge/description.jsp?id=0007&lang=jp](http://judge.u-aizu.ac.jp/onlinejudge/description.jsp?id=0007&lang=jp)

### 解法
切り上げをどうするかがポイントだと思います。
1,000で割って、ceilで切り上げを行って1,000を掛けて戻すといった方法で実装しました。
