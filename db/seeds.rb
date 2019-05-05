# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Teacher.create([
  { first_name: 'Thaichor', last_name: 'Seng', email: 'thaichor@gmail.com', phone: '016986888', date_of_birth: '2019-01-01' },
  { first_name: 'Kimsrung', last_name: 'Lov', email: 'kimsrung@gmail.com', phone: '016986000', date_of_birth: '2019-01-01' },
  { first_name: 'Bunthai', last_name: 'Lov', email: 'bunthai@gmail.com', phone: '016986111', date_of_birth: '2019-01-01' }
])

Student.create([
  { first_name: 'Serey', last_name: 'Sok', email: 'thaichor@gmail.com', phone: '016222333', parents_phone: '016222333', date_of_birth: '2019-01-01' },
  { first_name: 'Cheang', last_name: 'Veang', email: 'kimsrung@gmail.com', phone: '016222111', parents_phone: '016222333', date_of_birth: '2019-01-01' },
  { first_name: 'Sinh', last_name: 'Steve', email: 'bunthai@gmail.com', phone: '016223111', parents_phone: '016222333', date_of_birth: '2019-01-01' }
])

Course.create([
  { name: 'Ruby on Rails', start_date: '2019-08-01', end_date: '2019-12-29', teacher_id: '1' },
  { name: 'React Native', start_date: '2019-08-08', end_date: '2019-12-03', teacher_id: '2' },
  { name: 'Java', start_date: '2019-08-05', end_date: '2019-12-31', teacher_id: '3' }
])