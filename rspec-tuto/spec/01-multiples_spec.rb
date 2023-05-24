require './lib/01-multiples'

# * Exercice 1:
#     Afficher les nombres de 1 à 87
#       - Pour les multiples de 3, afficher "trois"
#       - Pour les multiples de 5, afficher "cinq"
#       - pour les multiples de 15, afficher "burger"

describe Multiples do
  describe "#list" do
    it "Afficher les nombres de 1 to 87" do
      multiples = Multiples.new
      expect(multiples.list.length).to eql(87)
      expect(multiples.list.first).to eql(1)
      expect(multiples.list[43]).to eql(44)
    end

    it 'Afficher "trois" pour tout les multiple de 3' do
      multiples = Multiples.new
      expect(multiples.list[2]).to eql("trois")
      expect(multiples.list[11]).to eql("trois")
    end

    it 'Afficher "cinq" pour tout les multiple de 5' do
      multiples = Multiples.new
      expect(multiples.list[4]).to eql("cinq")
      expect(multiples.list[24]).to eql("cinq")
    end

    it 'Afficher "burger" pour tout les multiple de 15' do
      multiples = Multiples.new
      expect(multiples.list[29]).to eql("burger")
      expect(multiples.list[44]).to eql("burger")
    end
  end
end
