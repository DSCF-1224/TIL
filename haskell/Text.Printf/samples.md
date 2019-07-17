# Text.Printf #

## 目次 ##

* [Printing Functions](#Printing-Functions)
* [参考文献](#参考文献)

## Printing Functions ##

### `Text.Printf.printf` のコード サンプル ###

~~~Haskell
-- [compiler]
-- GHC 7.10.3
-- GHC 8.4.2

-- modules to import --

import qualified Text.Printf

-- the main process is as follows --

main :: IO ()
main = do

        Text.Printf.printf "%2d\n"   (1 :: Integer) -- returns :   ␣1
        Text.Printf.printf "%2.0d\n" (1 :: Integer) -- returns :   ␣1
        Text.Printf.printf "%2.1d\n" (1 :: Integer) -- returns :   ␣1
        Text.Printf.printf "%2.2d\n" (1 :: Integer) -- returns :   01
        Text.Printf.printf "%2.3d\n" (1 :: Integer) -- returns :   001
~~~

## 参考文献 ##

* [Haskell.org](https://www.haskell.org/)
  * [Text.Printf](http://hackage.haskell.org/package/base-4.12.0.0/docs/Text-Printf.html)

<!-- EOF -->
