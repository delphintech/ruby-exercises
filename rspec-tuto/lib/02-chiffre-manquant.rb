# * Exercice 2:
#     Fonction qui comprend un tableau avec des chiffres allant de 1 à n
#     Il faut trouver le chiffre manquant:
#     Exemple:
#       [1, 3, 5, 4] => 2
#       [6, 3, 4, 5, 2] => 1
#       [5, 3, 2, 1, 4] => 6
def missing_number(array)

  puts "Sorry this is not an array " if !array.is_a?(Array)


  array = array.sort!
  i = 0
  l = array.length

  while i < l - 1
    result = array[i] + 1 unless (array[i] + 1) == array[i + 1]
    i += 1
  end

  return result

end

# puts missing_number([1, 3, 5, 4])
# puts missing_number([6, 3, 5, 2])
# puts missing_number([5, 2, 1, 4])
