calcChange owed given = if change > 0
    then change
    else 0
  where change = given - owed

inc n = n + 1

double n = n * 2

square n = n * n

doSomeWeirdThing n = if even n
  then n - 2
  else 3 * n + 1

main :: IO()
main = do
  print "calChange"
  print (calcChange 20 100)
  print (calcChange 100 100)
  print "inc"
  print (inc 5)
  print (inc (-1))
  print "double"
  print (double 12)
  print "square"
  print (square 2)
  print (square (-4))
  print "Do some weird thing"
  print (doSomeWeirdThing 1)
  print (doSomeWeirdThing 2)
