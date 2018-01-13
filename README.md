# UIprototyping-SPLE

## インストール

あらかじめ TeX をインストールします。相当時間がかかるので，時間には余裕を持って！

Homebrew で MacTex をインストールする:

```bash
$ brew cask install mactex
(一度ターミナルを再起動する)
$ sudo tlmgr update --self --all
$ sudo tlmgr paper a4
$ sudo cjk-gs-integrate --link-texmf --force
$ sudo mktexlsr
$ sudo kanji-config-updmap-sys hiragino-elcapitan-pron
```

次に pandoc をインストールします。

Homebrew で pandoc をインストールする:

```bash
$ brew install pandoc
```

次に ImageMagick をインストールします。

```bash
$ brew install imagemagick
```

これらが準備できたあとは，下記のようにインストールしてください。

```bash
$ git clone git@github.com:zacky1972/UIprototyping-SPLE.git
$ cd UIprototyping-SPLE
```

## コンパイル方法

```bash
$ make
$ open manuscript.pdf
```

## タイトルや著者，スタイル等を変更する場合

manuscript.tex を編集してください。

## 本文を編集する場合

description.md を編集してください。Markdown 記法で記述できます。

## 画像の追加

images フォルダを作って png を置いてください。
