# Treasure Hunt
> 昨年他界した曽祖父の遺品を整理していたところ、次のような紙がでてきました。

![text](http://judge.u-aizu.ac.jp/onlinejudge/IMAGE1/treasure.gif)
> 紙の裏には「最初の数だけ前に進んで、次の数の角度だけ右にまわる（負の数は左にまわる）、それ以降はその繰り返し」とメモがしてあります。祖母によれば「三本松」は、町のちょうど中心にあったそうです。しかし、今はビルや家が立ち並んでいて、ここに書いてあるとおりに歩くことはできません。地図の上で宝のある場所を探してください。

> 1 歩は 1m だとします。入力データは、進む歩数と回転する角度を書いた行が並んでいて、最後に「0,0」という行があります。最後まで指示どおりに歩いたときに着いた場所を「街の中心から東へ x m, 北へ y m 」のように測り、その x と y を表示して終了するプログラムを作成して下さい。西および南の場合は x, y は負の値となります。x, y ともに整数部を表示して下さい。

### Input
> 歩数（100以下の正の整数）　回転角度(-180 以上 180 以下の整数)が半角カンマ区切りで与えられます。

### Output
> x, y をそれぞれ１行に出力して下さい。

### Sample Input
    56,65
    97,54
    64,-4
    55,76
    42,-27
    43,80
    87,-86
    55,-6
    89,34
    95,5
    0,0
### Output for the Sample Input
    171
    -302

### 問題URL
[http://judge.u-aizu.ac.jp/onlinejudge/description.jsp?id=0016&lang=jp](http://judge.u-aizu.ac.jp/onlinejudge/description.jsp?id=0016&lang=jp)

### 解法
進行方向に歩いた距離ををｘ軸とｙ軸に分解することで解けます。北側を向いた状態で始まることと、角度の管理ができれば、解けると思います。