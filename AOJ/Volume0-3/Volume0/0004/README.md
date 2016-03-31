# Simultaneous Equation
> 連立方程式

    ax + by = c
    dx + ey = f

> の解、x, y を出力して終了するプログラムを作成して下さい。a, b, c, d, e, f はそれぞれ、 -1000 以上 1000 以下の実数とし、連立方程式の解が一意に存在するように与えられるものとします。

### Input
> 複数のデータセットが与えられます。入力の最後まで処理して下さい。１つのデータセットが１行に与えられます。１つのデータセットに a, b, c, d, e, f が１つのスペースで区切られて与えられます。

### Output
> 各データセットに対して、x, y を１つのスペースで区切って１行に出力して下さい。各値は小数点以下第３位まで出力して下さい。小数点以下第４位を四捨五入して下さい。

### Sample Input
    1 2 3 4 5 6
    2 -1 -2 -1 -1 -5

### Output for the Sample Input
    -1.000 2.000
    1.000 4.000

### 問題URL
[http://judge.u-aizu.ac.jp/onlinejudge/description.jsp?id=0004&lang=jp](http://judge.u-aizu.ac.jp/onlinejudge/description.jsp?id=0004&lang=jp)

### 解法
1. 行列
2. ガウスの消去法

などで解けます。1のコードを載せています。