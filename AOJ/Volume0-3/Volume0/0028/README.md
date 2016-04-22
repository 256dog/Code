# Mode Value
> 1～100 の整数データをファイルから読みこんで、データの最頻値を出力して終了するプログラムを作成してください。最頻値とは、最も頻度の高い（出現回数が多い）値のことです。入力例を見てください。「5」という数値が3 つ、「3」という数値が3 つ、「7」は2 つ、他は1 つです。このとき、もっとも個数の多い「3」「5」が最頻値となります。

### Input
> 整数データ（１００件以内）

### Output
> 整数データの最頻値。複数ある場合は、値の小さい順に改行してすべて表示して下さい。

### Sample Input
    5
    6
    3
    5
    8
    7
    5
    3
    9
    7
    3
    4
### Output for the Sample Input
    3
    5

### 問題URL
[http://judge.u-aizu.ac.jp/onlinejudge/description.jsp?id=0028&lang=jp](http://judge.u-aizu.ac.jp/onlinejudge/description.jsp?id=0028&lang=jp)

### 解法
Rubyでは、Hashを利用して、各数字の出現回数を管理すると簡単にできます。