require 'faker'

puts 'Cleaning database...'
Ingredient.destroy_all

ingredients = %w(lemon ice mint leaves redbull jagermeister sugar tonic gin rhum)
ingredients.each { |ingredient| Ingredient.create(name: ingredient) }


puts 'Ingredients creating..'
