import Data.List

compareLastNames' name1 name2 = if cmpLast /= EQ
                                   then cmpLast
                                   else compare firstName1 firstName2
                                where lastName1 = snd name1
                                      lastName2 = snd name2
                                      firstName1 = fst name1
                                      firstName2 = fst name2
                                      cmpLast = compare lastName1 lastName2

-- take a tuple of first and last name and a second
-- tuple of a first and last name and sort by last name.
compareLastNames name1 name2 = if lastName1 > lastName2
                                  then GT
                               else if lastName1 < lastName2
                                       then LT
                                       -- last names are equal.
                                       else if firstName1 > firstName2
                                               then GT
                                       else if firstName1 < firstName2
                                               then LT
                                       else EQ
                               where lastName1 = snd name1
                                     lastName2 = snd name2
                                     firstName1 = fst name1
                                     firstName2 = fst name2

main :: IO ()
main = do

  let names = [("Ian", "Curtis"),
         ("Bernard","Sumner"),
         ("David", "Cohen"),
         ("Aaron", "Cohen"),
         ("Aaron", "Cohen"),
         ("Peter", "Hook"),
         ("Stephen","Morris")]

  print (sort names)
  print (sortBy compareLastNames names)
  print (sortBy compareLastNames' names)
