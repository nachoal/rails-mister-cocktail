require 'open-uri'
require 'json'
drinks_json = JSON.load(open("https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list"))

drinks_json['drinks'].each do |drink|
  Ingredient.create(name: drink['strIngredient1'])
end