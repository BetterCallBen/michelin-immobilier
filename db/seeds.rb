Club.destroy_all
puts "database cleaned"

club1 = Club.create!(
  name: "Club1",
  background_image: "url1"
)
Club.create!(
  name: "Club2",
  background_image: "url2"
)
Club.create!(
  name: "Club3",
  background_image: "url3"
)
Client.create!(
  first_name: "benjamin",
  last_name: "boisson",
  phone_number: "0613653334",
  email: "benjbdk@gmail.com",
  address: "41 avenue lamartine",
  club: club1
)
User.create!(first_name: 'Nicolas', last_name: "Mercier", password: "secret", email: 'benjamin@gmail.com', club: club1)

puts "#{Club.count} clubs were created"
puts "#{User.count} users were created"
puts "#{Client.count} clients were created"
