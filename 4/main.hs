doubleDouble x = (\x -> x * 2) x * 2


main :: IO ()
main = do
  print "hi"
  print (doubleDouble 4)
