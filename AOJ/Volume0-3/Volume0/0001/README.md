# List of Top 3 Hills
> 山の高さをメートル単位の整数で表した 10 個のデータがあります。その 10 個のデータを読み込んで、その中で、高い順から３つ出力して終了するプログラムを作成して下さい。

### Input
    山の高さ１（整数）　
    山の高さ２（整数）　
     .
     .
    山の高さ１０（整数）　

### Constraints
> 0 ≤ 山の高さ ≤ 10000

### Output
    最も高い山の高さ
    ２番目に高い山の高さ
    ３番目に高い山の高さ

### Sample Input
    1819
    2003
    876
    2840
    1723
    1673
    3776
    2848
    1592
    922

## Output for the Sample Input
    3776
    2848
    2840

### 問題URL
[http://judge.u-aizu.ac.jp/onlinejudge/description.jsp?id=0001&lang=jp](http://judge.u-aizu.ac.jp/onlinejudge/description.jsp?id=0001&lang=jp)

### 解法
1. Arrayに入力をすべて入れる
2. ソートする
3. 3件出力する