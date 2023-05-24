require './lib/03_sous_tableaux'

# On a un array et un nombre entier k.
# Trouver le nombre de sous array continus dont la somme vaut k
# Exemple:
#   ([1, 2, 3, 0, 3],3) => 5
#   ([4, 2, 9, 7, 19],5) => 0
#   ([1, -1, 2], 2) => 2
#   ([1, 1, 1, -1],3) => 1

describe Exercice3 do
  describe '#sub_tab' do
    it 'Trouver le nombre de sous array continus dont la somme vaut k' do
      test = Exercice3.new
      expect(test.sub_tab([1, 2, 3, 0, 3], 3)).to eql(5)
      expect(test.sub_tab([4, 2, 9, 7, 19], 5)).to eql(0)
      expect(test.sub_tab([1, 1, 2], 2)).to eql(2)
      expect(test.sub_tab([1, 1, 1, -1], 3)).to eql(1)
    end
  end
end
