# * Exercice 3:
#     On a un array et un nombre entier k.
#     Trouver le nombre de sous array continus dont la somme vaut k
#     Exemple:
#       ([1, 2, 3, 0, 3],3) => 5
#       ([4, 2, 9, 7, 19],5) => 0
#       ([1, -1, 2], 2) => 2
#       ([1, 1, 1, -1],3) => 1


def sub_tab(array, k)
  puts "Sorry this is not an array " unless array.is_a?(Array)

  i = 1
  l = array.length
  result = 0

  while i < l do
    test = array.each_slice(i).to_a

    test.each{ |array|
      result += 1 if array.sum == k
    }
    i += 1
  end

  return result
end


# puts sub_tab([1, 2, 3, 0, 3],3)
# puts sub_tab([4, 2, 9, 7, 19],5)
# puts sub_tab([1, -1, 2], 2)
# puts sub_tab([1, 1, 1, -1],3)
