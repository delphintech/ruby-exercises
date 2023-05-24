# Fonction qui comprend un tableau avec des chiffres allant de 1 à n
# Il faut trouver le chiffre manquant:
# Exemple:
#   [1, 3, 5, 4] => 2
#   [6, 3, 7, 5, 2] => 4
#   [6, 3, 2, 1, 4, 7, 8, 9] => 5
class Exercice2
  def missing_number(array)
    puts 'Sorry this is not an array' unless array.is_a?(Array)

    array.sort!
    i = 0
    l = array.length

    while i < l - 1
      result = array[i] + 1 unless (array[i] + 1) == array[i + 1]
      i += 1
    end
    result
  end
end
