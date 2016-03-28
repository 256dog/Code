# Digit Number
> 与えられた２つの整数 a と b の和の桁数を出力して終了するプログラムを作成して下さい。

### Input
> 複数のデータセットが与えられます。各データセットは１行に与えられます。各データセットは２つの整数 a と b が１つのスペースで区切られて与えられます。入力の終わりまで処理して下さい。a と b は非負の整数とします。

### Constraints
> 0 ≤ a, b ≤ 1000000
> データセットの数 ≤ 200

### Output
> 各データセットごとに、a + b の桁数を出力して下さい。

### Sample Input
    5 7
    1 99
    1000 999

### Output for the Sample Input
    2
    3
    4

### 問題URL
[http://judge.u-aizu.ac.jp/onlinejudge/description.jsp?id=0002&lang=jp](http://judge.u-aizu.ac.jp/onlinejudge/description.jsp?id=0002&lang=jp)

### 解法
常用対数を使って求める

他には
１０で割った回数で求めてもいいですし、計算結果を文字列に変換して文字数をカウントしてもいいです。