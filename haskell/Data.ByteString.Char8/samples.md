# Data.ByteString.Char8 #

## 目次 ##

* [Substrings](#Substrings)
  * [Breaking string](#Breaking-string)
  	* [take](#Data.ByteString.Char8.take)

## Substrings ##

### Breaking string ###

#### Data.ByteString.Char8.take ####

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