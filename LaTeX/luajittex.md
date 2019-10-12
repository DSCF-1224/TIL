# LuaJitTeX #

## `luajittex.exe` の利用開始 ##

### Windows ###

1. `fmtutil.cnf` ファイルを捜索する．TeX Live 2019 の場合，同ファイルは次のパスにある：`texlive\2019\texmf-dist\web2c`
2. `fmtutil.cnf` ファイルを開き，`luajitlatex` で検索する．TeX Live 2019 の場合，そのような文字列は `#! luajittex luajittex language.def,language.dat.lua luatex.ini`1個しか存在しない．
3. `fmtutil.cnf` ファイル中の `luajitlatex` を含む行のコメントアウト `#!`&#9085; を外す（&#9085;は半角スペース）．
4. PowerShell を管理者として実行し，`fmtutil-sys --byfmt luajitlatex` を実行する．TeX Live 2019 の場合，`fmtutil-sys.exe` は次のパスにある：`texlive\2019\bin\win32`

<!-- EOF -->
