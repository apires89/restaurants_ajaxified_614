# db/seeds.rb
Review.destroy_all
Restaurant.destroy_all
puts 'Creating restaurants...'
Restaurant.create!({
  name: "Psi",
  address: "Rua Luciano Cordeiro, Portugal"
})
restaurant = Restaurant.create!({
  name: "Vegan Junkies",
  address: "Rua Luciano Cordeiro, Portugal"
})

40.times do
  Review.create(content: "very nice! very nice! very nice! very nice! very nice! very nice!", restaurant: restaurant)
end
puts 'Finished!'
