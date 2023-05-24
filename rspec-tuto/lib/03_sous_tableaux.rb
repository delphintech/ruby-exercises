# On a un array et un nombre entier k.
# Trouver le nombre de sous array continus dont la somme vaut k
# Exemple:
#   ([1, 2, 3, 0, 3],3) => 5
#   ([4, 2, 9, 7, 19],5) => 0
#   ([1, 1, 2], 2) => 2
#   ([1, 1, 1, -1],3) => 1
class Exercice3
  def sub_tab(array, k)
    i = 2
    l = array.length
    result = 0

    array.each { |num| result += 1 if num == k }

    while i < l
      clone = array.map { |num| num }
      2.times do
        test = clone.each_slice(i).to_a
        test.each { |sub| result += 1 if sub.length == i && sub.sum == k }
        clone = clone.drop(1)
      end
      i += 1
    end

    result
  end
end

# puts sub_tab([1, 2, 3, 0, 3],3)
# puts sub_tab([4, 2, 9, 7, 19],5)
# puts sub_tab([1, -1, 2], 2)
# puts sub_tab([1, 1, 1, -1],3)
