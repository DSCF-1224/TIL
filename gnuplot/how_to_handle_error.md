# gnuplot のエラーへの対処例 #

## 目次 ##

* [warning](#warning)
  * [warning: iconv faild](#warning:-iconv-failed)

## warning ##

### `warning: iconv failed` ###

* **Version 5.2 patchlevel 6 last modified 2019-01-01**
  * `show encoding` で `nominal character encoding is sjis` と表示される場合、当該エラーが発生する可能性があります
  * `set encoding utf8` の実行で解消する場合があります。
