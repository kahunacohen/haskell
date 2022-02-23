import Data.List

-- take a tuple of first and last name and a second
-- tuple of a first and last name and sort by last name.
compareLastNames name1 name2 = if lastName1 > lastName2
                                  then GT
                               else if lastName1 < lastName2
                                       then LT
                                       else EQ
                               where lastName1 = snd name1
                                     lastName2 = snd name2

main :: IO ()
main = do

  let names = [("Ian", "Curtis"),
         ("Bernard","Sumner"),
         ("David", "Cohen"),
         ("Aaron", "Cohen"),
         ("Peter", "Hook"),
         ("Stephen","Morris")]

  print (sort names)
  print (sortBy compareLastNames names)
