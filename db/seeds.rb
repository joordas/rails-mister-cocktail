Dose.destroy_all
Ingredient.destroy_all
Cocktail.destroy_all

url = 'http://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'

ingredients = JSON.parse(open(url) { |io| io.read})

ingredients["drinks"].each do |drink|
  Ingredient.create!(name: drink["strIngredient1"])
end


cocktails = ["Mint Julep", "Whiskey Sour", "Mojito"]


cocktails.each do |cocktail|

  Cocktail.create!(name: cocktail)
end
