# Physical Experiments
> 地球上で物体を静かに落下させたとき、空気抵抗などの影響を考えないとすると、t 秒後の物体の速度 v, t 秒中に物体が落下した距離 y は、

![physical experiments](http://judge.u-aizu.ac.jp/onlinejudge/IMAGE1/physical.gif)

> で与えられます。

> ある人が、建物の高い位置からガラスの球を落下させて、ガラスの球が割れるかどうかを調べる実験を行っています。

> 入力データとして、球が割れるのに必要な最低速度が与えられます。球を割るには、建物の少なくとも何階以上から落とす必要があるかを求め、その階を出力して終了するプログラムを作成して下さい。なお、建物の N 階の高さは 5 × N - 5 で与えられるとします。

### Input
> 複数のデータセットが与えられます。各データセットに球が割れるのに必要な最低速度（実数）が１行に与えられます。入力の最後まで処理して下さい。

### Output
> 各データセットに対して、そこから落とすと球が割れる最低の階数（整数）を１行に出力して下さい。

### Sample Input
    25.4
    25.4
### Output for the Sample Input
    8
    8

### 問題URL
[http://judge.u-aizu.ac.jp/onlinejudge/description.jsp?id=0024&lang=jp](http://judge.u-aizu.ac.jp/onlinejudge/description.jsp?id=0024&lang=jp)

### 解法
1. vからｔを求める(t=v/9.8)
2. tからyを求める(y=4.9t^2)
3. yからNを求める(N=(y+5)/5)
Nを求める際に値を切り上げることを考慮する
