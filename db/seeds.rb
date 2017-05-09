require 'faker'

puts 'Cleaning database...'
Ingredient.destroy_all

puts 'Creating ingredients'
10.times do
  Ingredient.create!(name: Faker::Food.ingredient)
end

puts '#{Ingredient.count} ingredients creating..'
