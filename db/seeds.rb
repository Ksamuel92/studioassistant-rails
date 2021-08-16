# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


user = User.find_or_create_by(
  name: 'John Doe', 
  email: 'john@example.com', 
  password_digest: BCrypt::Password.create('password')
)

 studio = Studio.find_or_create_by(
  name: 'Studio',
  email: 'studio@example.com',
  address_line_1: '123 Jump Street',
  city: 'Richmond',
  state: 'Virginia',
  zip_code: '23231',
  daw: 'Ableton Live                ',
  description: 'a studio',
  rental_cost: 300,
  user_id: user.id
)
client = Client.find_or_create_by(
  name: 'Client Samuel',
  email: 'client@example.com',
  genre: 'Rock',
  budget: 3000,
  band: true,
  drums: true
)

recsession1 = RecordingSession.find_or_create_by(
  studio_id: studio.id,
  client_id: client.id, 
  start_date: Date.new(2021,8,18),
  hours_per_day: 6,
  per_hour: 6
)


recsession2 = RecordingSession.find_or_create_by(
    studio_id: studio.id,
    client_id: client.id, 
    start_date: Date.new(2021,9,14),
    hours_per_day: 6,
    per_hour: 6
  )
  