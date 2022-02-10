Club.destroy_all
puts "database cleaned"

club1 = Club.create!(
  name: "Club1",
  background_image: "url1"
)
club2 = Club.create!(
  name: "Club2",
  background_image: "url2"
)
club3 = Club.create!(
  name: "Club3",
  background_image: "url3"
)
User.create!(
  first_name: 'Nicolas',
  last_name: "Mercier",
  password: "secret",
  email: 'nicolas@gmail.com',
  club: club1
)
User.create!(
  first_name: 'Jacob',
  last_name: "Thev",
  password: "secret",
  email: 'jacob@gmail.com',
  club: club2
)
User.create!(
  first_name: 'charlotte',
  last_name: "Moula",
  password: "secret",
  email: 'charlotte@gmail.com',
  club: club3
)
User.create!(
  first_name: 'admin',
  last_name: "admin",
  password: "secret",
  email: 'admin@gmail.com',
  club: club1, admin: true
)

puts "#{Club.count} clubs were created"
puts "#{User.count} users were created"
puts "#{Client.count} clients were created"
