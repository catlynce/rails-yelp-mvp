puts "Destroying all restaurants"
Restaurant.destroy_all

puts "Seeding restaurants..."
10.times do
    Restaurant.create do |restaurant|
        restaurant.name = Faker::Company.name
        restaurant.address = Faker::Address.full_address
        restaurant.category = %w(chinese italian japanese french belgian).sample
    end
end

puts "Ready !!!"