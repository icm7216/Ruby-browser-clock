# Opalを使ってブラウザのcanvasに時計を表示

OpalはRubyのコードをJavaScriptに変換するコンパイラです。
このサンプルコードは、ブラウザのcanvasに時計を表示するだけのサンプルです。


## 使ってみる

Opalでコンパイル済みのJSファイルを同梱しているので、ブラウザで`clock.html`を開くだけで動作確認できます。


## Rubyコードを変更したい

Rubyのコードは`clock.rb`です。変更を適用するには（RubyからJSへの）再コンパイルが必要です。

再コンパイルに必要なgemをインストール。
```
> bundle install
```

コンパイルは`rake`または`rake build`を実行します。
```
rake
```

コンパイルに成功すると`clock.js`が作成されます。
ブラウザで`clock.html`を開くか、再読み込みして動作を確認しましょう。


# Opalをもっと知りたい

Opalに興味を持ったら公式ドキュメントを読んでみましょう。
*   [Opal: Ruby to JavaScript Compiler](https://opalrb.com/)

GitHub
*   [opal/opal: Ruby ♥︎ JavaScript](https://github.com/opal/opal)
*   [opal/opal-browser: Browser support for Opal.](https://github.com/opal/opal-browser)



# License

MIT

