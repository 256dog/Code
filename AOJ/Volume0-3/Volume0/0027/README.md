# What day is today?
> 2004 年 1 月 1 日から 12 月 31 日までの日付を入力し、その日の曜日を出力して終了するプログラムを作成してください。なお、2004 年 1 月 1 日は木曜日です。また、今年はうるう年ですので2 月29 日があることに注意してください。

### Input
> 複数のデータセットを処理しなければなりません。１つのデータセットに月と日が１つのスペース区切られて１行に与えられます。月が 0 となったとき入力の最後とします（この場合は処理をしないでプログラムを終了させる）。

### Output
> 各データセットごとに曜日を英語で１行に出力して下さい。以下の訳を参考にして出力して下さい。

    月曜日 Monday
    火曜日 Tuesday
    水曜日 Wednesday
    木曜日 Thursday
    金曜日 Friday
    土曜日 Saturday
    日曜日 Sunday

### Sample Input
    1 1
    2 29
    0 0
### Output for the Sample Input
    Thursday
    Sunday

### 問題URL
[http://judge.u-aizu.ac.jp/onlinejudge/description.jsp?id=0027&lang=jp](http://judge.u-aizu.ac.jp/onlinejudge/description.jsp?id=0027&lang=jp)

### 解法
日付けを扱うライブラリを使うと簡単です。