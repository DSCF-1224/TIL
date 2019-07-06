# Prelude #

## 目次 ##

* [functions](#functions)
  * [Basic data types](#Basic-data-types)
    * [curry](#Prelude.curry)
    * [fst](#Prelude.fst)
    * [snd](#Prelude.snd)
  * [Miscellaneous functions](#Miscellaneous-functions)
    * [flip](#Prelude.flip)

## functions ##

### Basic data types ###

#### Prelude.fst ####

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

#### Prelude.snd ####

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

#### Prelude.curry ####

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

### Miscellaneous functions ###

#### Prelude.flip ####

~~~Haskell
Prelude.flip :: (a -> b -> c) -> b -> a -> c
~~~

##### Prelude.flip` のコード サンプル #####

~~~Haskell
-- modules to import --

import Prelude

-- the main process is as follows --

main :: IO ()
main = do

        -- STEP.01
        -- output the return value of `Prelude.flip` and `(+)`
        Prelude.print $ Prelude.flip (+) (0.0 :: Double) (1.0 :: Double) -- returns : 1.0
        Prelude.print $ Prelude.flip (+) (1.0 :: Double) (0.0 :: Double) -- returns : 1.0

        -- STEP.02
        -- output the return value of `Prelude.flip` and `(-)`
        Prelude.print $ Prelude.flip (-) (0.0 :: Double) (1.0 :: Double) -- returns :  1.0
        Prelude.print $ Prelude.flip (-) (1.0 :: Double) (0.0 :: Double) -- returns : -1.0

        -- STEP.03
        -- output the return value of `Prelude.flip` and `(*)`
        Prelude.print $ Prelude.flip (*) (1.0 :: Double) (2.0 :: Double) -- returns : 2.0
        Prelude.print $ Prelude.flip (*) (2.0 :: Double) (1.0 :: Double) -- returns : 2.0

        -- STEP.04
        -- output the return value of `Prelude.flip` and `(/)`
        Prelude.print $ Prelude.flip (/) (1.0 :: Double) (2.0 :: Double) -- returns : 2.0
        Prelude.print $ Prelude.flip (/) (2.0 :: Double) (1.0 :: Double) -- returns : 0.5

        -- STEP.05
        -- output the return value of `Prelude.flip` and `(++)`
        Prelude.print $ Prelude.flip (++) ("Hello" :: String) ("World" :: String) -- returns : "WorldHello"
        Prelude.print $ Prelude.flip (++) ("World" :: String) ("Hello" :: String) -- returns : "HelloWorld"
~~~

<!-- EOF -->
