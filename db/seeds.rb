puts 'Deleting previous fake restaurants'
Restaurant.destroy_all
# Review.destroy_all
puts 'Generating 10 fake restaurants...'
10.times do |i|
  restaurant = Restaurant.create!(
    name: Faker::Restaurant.name,
    address: Faker::Address.full_address,
    phone_number: Faker::PhoneNumber.cell_phone,
    category: ["chinese", "italian", "japanese", "french", "belgian"].sample
  )
  puts "#{i + 1}. #{restaurant.name}"
end
puts 'Finished!'
