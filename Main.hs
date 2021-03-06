import Data.Algorithm.Munkres
import Data.Array.Unboxed 
import System.Console.Readline
import Text.CSV


readInput :: Int -> IO()
readInput id = do
  maybeLine <- readline ("User " ++ show(id) ++ ": ")
  case maybeLine of
    Nothing -> return ()
    Just line -> putStrLn $ read (show line)

getCost :: Int -> Int -> Int
getCost user partner = user * partner

main :: IO ()
main = testCSV

testCSV :: IO()
testCSV = do
    input <- parseCSVFromFile "input.txt"
    print input

testReading :: IO()
testReading = do
    input <- readFile "input.txt"
    print input

testInput :: IO()
testInput = do
  readInput 3
  let x = [((user, partner), getCost user partner)| user <- [1..3], partner <- [1..3]]
  print x

testUArray :: IO()
testUArray = do
  let myarray = array ((1,1),(4,4)) [((4,4),1)] :: UArray (Int, Int) Int
  let result = hungarianMethodInt myarray
  print myarray
  print result


