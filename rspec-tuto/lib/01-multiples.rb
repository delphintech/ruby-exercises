# * Exercice 1:
#     Afficher les nombres de 1 à 87
#       - Pour les multiples de 3, afficher "trois"
#       - Pour les multiples de 5, afficher "cinq"
#       - pour les multiples de 15, afficher "burger"

class Multiples
  def list
    list = (1..87).to_a

    result = list.map do |n|
      if n % 15 == 0
        "burger"
      elsif n % 5 == 0
        "cinq"
      elsif n % 3 == 0
        "trois"
      else
        n
      end
    end
  end
end
