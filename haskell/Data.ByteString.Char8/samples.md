# Data.ByteString.Char8 #

## 目次 ##

* [Substrings](#Substrings)
  * [Breaking string](#Breaking-string)
    * [drop](#Data.ByteString.Char8.drop)
    * [take](#Data.ByteString.Char8.take)
    * [splitAt](#Data.ByteString.Char8.splitAt)
* [Indexing ByteStrings](#Indexing-ByteStrings)
  * [index](#Data.ByteString.Char8.index)


## Substrings ##

### Breaking string ###

#### [Data.ByteString.Char8.drop](http://hackage.haskell.org/package/bytestring-0.10.8.2/docs/Data-ByteString-Char8.html#g:12) ####

~~~Haskell
-- [compiler]
-- GHC 7.10.3
-- GHC 8.4.2

-- modules to import --

import qualified Data.ByteString.Char8
import           Prelude

-- the main process is as follows --

main :: IO ()
main = do

        -- STEP.01
        -- read out the given data
        given_string <- Data.ByteString.Char8.getLine

        -- STEP.02
        -- if `given_string` was "hoge"
        Prelude.print $ Data.ByteString.Char8.drop 0 given_string -- returns : "hoge"
        Prelude.print $ Data.ByteString.Char8.drop 1 given_string -- returns : "oge"
        Prelude.print $ Data.ByteString.Char8.drop 2 given_string -- returns : "ge"
        Prelude.print $ Data.ByteString.Char8.drop 3 given_string -- returns : "e"
        Prelude.print $ Data.ByteString.Char8.drop 4 given_string -- returns : ""
        Prelude.print $ Data.ByteString.Char8.drop 5 given_string -- returns : ""
~~~

#### [Data.ByteString.Char8.take](http://hackage.haskell.org/package/bytestring-0.10.8.2/docs/Data-ByteString-Char8.html#g:12) ####

~~~Haskell
-- [compiler]
-- GHC 7.10.3
-- GHC 8.4.2

-- modules to import --

import qualified Data.ByteString.Char8
import           Prelude

-- the main process is as follows --

main :: IO ()
main = do

        -- STEP.01
        -- read out the given data
        given_string <- Data.ByteString.Char8.getLine

        -- STEP.02
        -- if `given_string` was "hoge"
        Prelude.print $ Data.ByteString.Char8.take 0 given_string -- returns : ""
        Prelude.print $ Data.ByteString.Char8.take 1 given_string -- returns : "h"
        Prelude.print $ Data.ByteString.Char8.take 2 given_string -- returns : "ho"
        Prelude.print $ Data.ByteString.Char8.take 3 given_string -- returns : "hog"
        Prelude.print $ Data.ByteString.Char8.take 4 given_string -- returns : "hoge"
        Prelude.print $ Data.ByteString.Char8.take 5 given_string -- returns : "hoge"
~~~

#### [Data.ByteString.Char8.splitAt](http://hackage.haskell.org/package/bytestring-0.10.8.2/docs/Data-ByteString-Char8.html#g:12) ####

~~~Haskell
-- [compiler]
-- GHC 7.10.3
-- GHC 8.4.2

-- modules to import --

import qualified Data.ByteString.Char8
import           Prelude

-- the main process is as follows --

main :: IO ()
main = do

        -- STEP.01
        -- read out the given data
        given_string <- Data.ByteString.Char8.getLine

        -- STEP.02
        -- if `given_string` was "hoge"
        Prelude.print $ Data.ByteString.Char8.splitAt 0 given_string -- returns : ("","hoge")
        Prelude.print $ Data.ByteString.Char8.splitAt 1 given_string -- returns : ("h","oge")
        Prelude.print $ Data.ByteString.Char8.splitAt 2 given_string -- returns : ("ho","ge")
        Prelude.print $ Data.ByteString.Char8.splitAt 3 given_string -- returns : ("hog","e")
        Prelude.print $ Data.ByteString.Char8.splitAt 4 given_string -- returns : ("hoge","")
        Prelude.print $ Data.ByteString.Char8.splitAt 5 given_string -- returns : ("hoge","")
~~~

## Indexing ByteStrings ##

### [Data.ByteString.char8.index](http://hackage.haskell.org/package/bytestring-0.10.8.2/docs/Data-ByteString-Char8.html#g:20) ###

~~~Haskell
-- [compiler]
-- GHC 7.10.3
-- GHC 8.4.2

-- modules to import --

import qualified Data.ByteString.Char8
import           Prelude

-- the main process is as follows --

main :: IO ()
main = do

        -- STEP.01
        -- read out the given data
        given_string <- Data.ByteString.Char8.getLine

        -- STEP.02
        -- if `given_string` was "hoge"
        Prelude.print $ Data.ByteString.Char8.index given_string 0 -- returns : 'h'
        Prelude.print $ Data.ByteString.Char8.index given_string 1 -- returns : 'o'
        Prelude.print $ Data.ByteString.Char8.index given_string 2 -- returns : 'g'
        Prelude.print $ Data.ByteString.Char8.index given_string 3 -- returns : 'e'
~~~

<!-- EOF -->
