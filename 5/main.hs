ifEven f x = if even x
             then f x
             else x

main :: IO ()
main = do
  print "hi"
  print(ifEven (\x -> x+1) 2)
  print(ifEven (\x -> x+1) 3)
