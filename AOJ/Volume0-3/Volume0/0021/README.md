# Parallelism
> A = (x1, y1), B = (x2, y2), C = (x3, y3), D = (x4, y4) の異なる４つの座標点が与えられたとき、直線 AB と CD が平行かどうかを判定し、平行である場合には YES、平行でない場合には NO と出力して終了するプログラムを作成して下さい。なお、x1, y1, x2, y2, x3, y3, x4, y4 は、それぞれ -100 以上 100 以下とします。

### Input
> 複数のデータセットが与えられます。一行目にデータセットの数 n が与えられます。つづいて n 行のデータセットが与えられます。各データセットの形式は以下のとおりです。

    x1 y1 x2 y2 x3 y3 x4 y4

> 各値は小数点以下最大5桁までの数字を含む実数である。

> データセットの数 n は 100 を超えない。

### Output
> 各データセットに対して、YES または NO を１行に出力して下さい。

### Sample Input
    2
    0.0 0.0 1.0 1.0 1.0 0.0 2.0 1.0
    3.0 2.0 9.0 6.0 13.0 5.0 7.0 9.0
### Output for the Sample Input
    YES
    NO
### 問題URL
[http://judge.u-aizu.ac.jp/onlinejudge/description.jsp?id=0021&lang=jp](http://judge.u-aizu.ac.jp/onlinejudge/description.jsp?id=0021&lang=jp)

### 解法
傾きを求めれて、それが同じならYES,違えばNOと表示すればOKです。

”小数点以下最大5桁までの数字を含む実数”なので、計算誤差が出ることを防ぐためにbigdecimalを使用しています。