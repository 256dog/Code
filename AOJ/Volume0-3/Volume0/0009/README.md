# Prime Number
> 6 桁以下の正の整数 n を入力し、n 以下の素数がいくつあるかを出力するプログラムを作成して下さい。ただし、素数とは 1 と自分自身でしか割り切れない正の整数のうち 1 をのぞいたものをいいます。例えば 10 以下の素数は、2, 3, 5, 7 です。

### Input
> 複数のデータセットが与えられます。各データセットに n (n ≤ 999999) が１行に与えられます。入力の最後まで処理して下さい。

> データセットの数は30を越えません。

### Output
> 各データセットごとに、n 以下の素数の個数を１行に出力して下さい。

### Sample Input
    10
    3
    11
### Output for the Sample Input
    4
    2
    5


### 問題URL
[http://judge.u-aizu.ac.jp/onlinejudge/description.jsp?id=0009&lang=jp](http://judge.u-aizu.ac.jp/onlinejudge/description.jsp?id=0009&lang=jp)

### 解法
1. 999999以下の素数を求め、Arrayに入れる
2. n以下の要素を数える

Rubyは素数を求めるライブラリが容易されているので、それを使用すれば実装が楽になります。