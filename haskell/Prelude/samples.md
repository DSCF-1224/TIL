# Prelude #

## 目次 ##

* [functions](#functions)
  * [Basic data types](#Basic-data-types)
    * [curry](#Prelude.curry)
    * [fst](#Prelude.fst)
    * [snd](#Prelude.snd)
* [Indexing ByteStrings](#Indexing-ByteStrings)
  * [index](#Data.ByteString.Char8.index)

## functions ##

### Basic data types ###

#### [Prelude.fst](http://hackage.haskell.org/package/base-4.12.0.0/docs/Prelude.html#g:3) ####

##### コード サンプル #####

~~~Haskell
-- [compiler]
-- GHC 7.10.3
-- GHC 8.4.2

-- modules to import --

import Prelude

-- the main process is as follows --

main :: IO ()
main = do

        -- STEP.01
        -- declare the sample data
        let given_tuple = (0,1)

        -- STEP.02
        -- output the return value of `Prelude.fst`
        Prelude.print $ Prelude.fst $ (1, 2) -- returns : 1
        Prelude.print $ Prelude.fst $ (2, 1) -- returns : 2
~~~

##### 関連項目 #####

* [functions](#functions)
  * [Basic data types](#Basic-data-types)
    * [curry](#Prelude.curry)
    * [fst](#Prelude.fst)
    * [snd](#Prelude.snd)

<!-- EOF -->
