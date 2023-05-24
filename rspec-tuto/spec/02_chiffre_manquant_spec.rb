require './lib/02_chiffre_manquant'

# Fonction qui comprend un tableau avec des chiffres allant de 1 à n
# Il faut trouver le chiffre manquant:
# Exemple:
#   [1, 3, 5, 4] => 2
#   [6, 3, 7, 5, 2] => 4
#   [6, 3, 2, 1, 4, 7, 8, 9] => 5

describe Exercice2 do
  describe '#missing_number' do
    it 'Trouver le chiffre manquant dans un tableau allant de 1 à n' do
      test = Exercice2.new
      expect(test.missing_number([1, 3, 5, 4])).to eql(2)
      expect(test.missing_number([6, 3, 7, 5, 2])).to eql(4)
      expect(test.missing_number([6, 3, 2, 1, 4, 5, 8, 9])).to eql(7)
    end
  end
end
