Club.destroy_all
puts "database cleaned"

club1 = Club.create!(
  name: "Club1"
)

User.create!(
  first_name: 'admin',
  last_name: "admin",
  password: "secret",
  email: 'admin@gmail.com',
  club: club1,
  admin: true
)

puts "#{Club.count} clubs were created"
puts "#{User.count} users were created"
puts "#{Client.count} clients were created"
