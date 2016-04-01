# GCD and LCM
> ２０億以下の正の整数 a, b を入力したとき、a と b の最大公約数と最小公倍数を出力して終了するプログラムを作成して下さい。ただし、a と b の最小公倍数は 20 億を超えないものとします。

### Input
> 複数のデータセットが与えられます。各データセットは１行に a と b が１つのスペースで区切られて与えられます。入力の最後まで処理して下さい。

### Output
> 各データセットに対して、最大公約数と最小公倍数を１つのスペースで区切って１行に出力して下さい。

### Sample Input
    8 6
    50000000 30000000

### Output for the Sample Input
    2 24
    10000000 150000000

### 問題URL
[http://judge.u-aizu.ac.jp/onlinejudge/description.jsp?id=0005&lang=jp](http://judge.u-aizu.ac.jp/onlinejudge/description.jsp?id=0005&lang=jp)

### 解法
ユークリッドの互除法を使えば解けます。

Rubyではgcdやlcmといった便利屋メソッドが用意されているので、ユークリッドの互除法を実装しなくても解けます。