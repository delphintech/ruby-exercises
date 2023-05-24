# Afficher les nombres de 1 à 87
#   - Pour les multiples de 3, afficher 'trois'
#   - Pour les multiples de 5, afficher 'cinq'
#   - pour les multiples de 15, afficher 'burger'
class Exercice1
  def list
    list = (1..87).to_a

    list.map do |n|
      if (n % 15).zero?
        'burger'
      elsif (n % 5).zero?
        'cinq'
      elsif (n % 3).zero?
        'trois'
      else
        n
      end
    end
  end
end
