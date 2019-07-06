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

##### Prelude.fst` のコード サンプル #####

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
        let tuple01 = (0 :: Integer, 1 :: Integer)
        let tuple02 = (1 :: Integer, 0 :: Integer)

        -- STEP.02
        -- output the return value of `Prelude.fst`
        Prelude.print $ Prelude.fst $ tuple01 -- returns : 0
        Prelude.print $ Prelude.fst $ tuple02 -- returns : 1
~~~

##### `Prelude.fst` の関連項目 #####

* [functions](#functions)
  * [Basic data types](#Basic-data-types)
    * [curry](#Prelude.curry)
    * [snd](#Prelude.snd)

#### [Prelude.snd](http://hackage.haskell.org/package/base-4.12.0.0/docs/Prelude.html#g:3) ####

##### `Prelude.snd` のコード サンプル #####

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
        let tuple01 = (0 :: Integer, 1 :: Integer)
        let tuple02 = (1 :: Integer, 0 :: Integer)

        -- STEP.02
        -- output the return value of `Prelude.snd`
        Prelude.print $ Prelude.snd $ tuple01 -- returns : 1
        Prelude.print $ Prelude.snd $ tuple02 -- returns : 0
~~~

##### `Prelude.snd` の関連項目 #####

* [functions](#functions)
  * [Basic data types](#Basic-data-types)
    * [curry](#Prelude.curry)
    * [fst](#Prelude.fst)

#### [Prelude.curry](http://hackage.haskell.org/package/base-4.12.0.0/docs/Prelude.html#g:3) ####

~~~Haskell
Prelude.curry :: ((a, b) -> c) -> a -> b -> c
~~~

##### Prelude.curry` のコード サンプル #####

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
        -- output the return value of `Prelude.curry` and `Prelude.fst`
        Prelude.print $ Prelude.curry (Prelude.fst) (1 :: Integer) (2 :: Integer) -- returns : 1
        Prelude.print $ Prelude.curry (Prelude.fst) (2 :: Integer) (1 :: Integer) -- returns : 2

        -- STEP.02
        -- output the return value of `Prelude.curry` and `Prelude.snd`
        Prelude.print $ Prelude.curry (Prelude.snd) (1 :: Integer) (2 :: Integer) -- returns : 2
        Prelude.print $ Prelude.curry (Prelude.snd) (2 :: Integer) (1 :: Integer) -- returns : 1
~~~

##### `Prelude.curry` の関連項目 #####

* [functions](#functions)
  * [Basic data types](#Basic-data-types)
    * [fst](#Prelude.fst)
    * [snd](#Prelude.snd)

<!-- EOF -->
