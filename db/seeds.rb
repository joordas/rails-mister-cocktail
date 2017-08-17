Dose.destroy_all
Ingredient.destroy_all
Cocktail.destroy_all

url = 'http://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'

ingredients = JSON.parse(open(url) { |io| io.read})

ingredients["drinks"].each do |drink|
  Ingredient.create!(name: drink["strIngredient1"])
end


cocktails = ["Mint Julep", "Whiskey Sour", "Mojito"]

url = "http://www.thecocktaildb.com/api/json/v1/1/search.php?s=#{name}"



image_url = path["drinks"][0]["strDrinkThumb"]

cocktails.each do |cocktail|
  # path = JSON.parse(open("#{url}/#{cocktail}"))
  # image_url = path["drinks"][0]["strDrinkThumb"]
  # byebug
  Cocktail.create!(name: cocktail, image_url: image_url)
end
