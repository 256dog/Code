# English Sentence
> 英語の文章に出現する単語の中で、出現頻度が最も高い単語と、文字数が最も多い単語を出力して終了するプログラムを作成してください。入力データには英文字、スペースのみが含まれているものとします。単語とは、スペースで区切られた連続する英文字の列です。文章の文字数は 1000 文字以下です。一つの単語の文字数は 32 文字以下です。出現頻度が最も高い単語、最長の文字数を持つ単語はそれぞれ文中にただ一つだけ存在するものとします。

### Input
> 英語の文章を表現する文字列（半角の英文字、スペース）

### Output
> 最も出現頻度が高い単語と、最も文字数が多い単語を１つのスペースで区切って１行に出力して下さい。

### Sample Input
    Thank you for your mail and your lectures

### Output for the Sample Input
    your lectures

### 問題URL
[http://judge.u-aizu.ac.jp/onlinejudge/description.jsp?id=0029&lang=jp](http://judge.u-aizu.ac.jp/onlinejudge/description.jsp?id=0029&lang=jp)

### 解法
Rubyでは、Hashを利用して、各単語の出現回数を管理すると簡単にできます。