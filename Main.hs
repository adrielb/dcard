import Data.Algorithm.Munkres
import Data.Array.Unboxed 


main :: IO ()
main = do
  let myarray = array ((1,1),(4,4)) [((4,4),1)] :: UArray (Int, Int) Int
  let result = hungarianMethodInt myarray
  print myarray
  print result
