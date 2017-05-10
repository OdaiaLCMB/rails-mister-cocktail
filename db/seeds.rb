require 'open-uri'
require 'json'

puts 'Cleaning database...'
Ingredient.destroy_all

url = 'http://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
ingredients_serialized = open(url).read
list = JSON.parse(ingredients_serialized)

ingredients = list["drinks"].map { |hash| hash["strIngredient1"] }

ingredients.each { |ingredient| Ingredient.create(name: ingredient) }


puts 'Ingredients creating..'
