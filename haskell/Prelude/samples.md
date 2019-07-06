# Prelude #

## 目次 ##

* [functions](#functions)
  * [Basic data types](#Basic-data-types)
    * [curry](#Prelude.curry)
    * [fst](#Prelude.fst)
    * [snd](#Prelude.snd)
  * [Numbers](#Numbers)
    * [Numeric functions](#Numeric-functions)
      * [even](#Prelude.even)
      * [odd](#Prelude.odd)
  * [Miscellaneous functions](#Miscellaneous-functions)
    * [id](#Prelude.id)
    * [flip](#Prelude.flip)
* [List operations](#List-operations)
  * [Operations](#Operations)

## functions ##

### Basic data types ###

#### Prelude.fst ####

##### Prelude.fst` のコード サンプル #####

~~~Haskell
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

### Numbers ###

#### Numeric functions ####

##### Prelude.even #####

~~~Haskell
Prelude.even :: Integral a => a -> Bool
~~~

##### `Prelude.even` のコード サンプル #####

~~~Haskell
-- modules to import --

import Prelude

-- the main process is as follows --

main :: IO ()
main = do

        -- STEP.01
        -- output the return value of `Prelude.even`
        Prelude.print $ Prelude.even (-2 :: Integer) -- returns : True
        Prelude.print $ Prelude.even (-1 :: Integer) -- returns : False
        Prelude.print $ Prelude.even ( 0 :: Integer) -- returns : True
        Prelude.print $ Prelude.even ( 1 :: Integer) -- returns : False
        Prelude.print $ Prelude.even ( 2 :: Integer) -- returns : True
~~~

##### `Prelude.even` の関連項目 #####

* [functions](#functions)
  * [Numbers](#Numbers)
    * [Numeric functions](#Numeric-functions)
      * [odd](#Prelude.odd)

##### Prelude.odd #####

~~~Haskell
Prelude.odd :: Integral a => a -> Bool
~~~

##### `Prelude.odd` のコード サンプル #####

~~~Haskell
-- modules to import --

import Prelude

-- the main process is as follows --

main :: IO ()
main = do

        -- STEP.01
        -- output the return value of `Prelude.odd`
        Prelude.print $ Prelude.odd (-2 :: Integer) -- returns : False
        Prelude.print $ Prelude.odd (-1 :: Integer) -- returns : True
        Prelude.print $ Prelude.odd ( 0 :: Integer) -- returns : False
        Prelude.print $ Prelude.odd ( 1 :: Integer) -- returns : True
        Prelude.print $ Prelude.odd ( 2 :: Integer) -- returns : False
~~~

##### `Prelude.odd` の関連項目 #####

* [functions](#functions)
  * [Numbers](#Numbers)
    * [Numeric functions](#Numeric-functions)
      * [even](#Prelude.even)

### Miscellaneous functions ###

#### Prelude.id ####

恒等写像

~~~Haskell
Prelude.id :: a -> a
~~~

##### `Prelude.id` のコード サンプル #####

~~~Haskell
-- modules to import --

import Prelude

-- the main process is as follows --

main :: IO ()
main = do

        Prelude.print $ Prelude.id $ (1 :: Int)                -- returns : 1
        Prelude.print $ Prelude.id $ ("Hello World" :: String) -- returns : "Hello World"
        Prelude.print $ Prelude.id $ (1 :: Int, 2 :: Int)      -- returns : (1,2)
        Prelude.print $ Prelude.id $ [1 :: Int .. 5 :: Int]    -- returns : [1,2,3,4,5]
~~~

#### Prelude.flip ####

~~~Haskell
Prelude.flip :: (a -> b -> c) -> b -> a -> c
~~~

##### `Prelude.flip` のコード サンプル #####

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

## List operations ##

### Operations ###

#### Prelude.map ####

~~~Haskell
Prelude.map :: (a -> b) -> [a] -> [b]
~~~

##### `Prelude.map` のコード サンプル #####

~~~Haskell
-- modules to import --

import Prelude

-- the main process is as follows --

main :: IO ()
main = do

        -- STEP.01
        -- output the return value of `Prelude.map` and `Prelude.even`
        -- return : [True,False,True,False,True]
        Prelude.print $ Prelude.map (Prelude.even) [0 :: Int .. 4 :: Int]

        -- STEP.02
        -- output the return value of `Prelude.map` and `Prelude.odd`
        -- return : [False,True,False,True,False]
        Prelude.print $ Prelude.map (Prelude.odd) [0 :: Int .. 4 :: Int]
~~~

##### `Prelude.map` の関連項目 #####

* [functions](#functions)
  * [Basic data types](#Basic-data-types)
    * [even](#Prelude.even)
    * [odd](#Prelude.odd)

<!-- EOF -->
