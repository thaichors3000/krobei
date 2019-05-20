# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

100.times do
     Teacher.create(
        first_name: FFaker::Name.first_name,
        last_name: FFaker::Name.last_name,
        email: FFaker::Internet.email,
        phone: FFaker::PhoneNumberCU.mobile_phone_number,
        date_of_birth: FFaker::Time.date
      ) 
end

100.times do
     Student.create(
        first_name: FFaker::Name.first_name,
        last_name: FFaker::Name.last_name,
        email: FFaker::Internet.email,
        gender: FFaker::Random.rand(0..1),
        phone: FFaker::PhoneNumberCU.mobile_phone_number,
        parents_phone: FFaker::PhoneNumberAU.home_work_phone_number,
        date_of_birth: FFaker::Time.date
      ) 
end

100.times do
  Course.create(
    name: FFaker::Education.major,
    start_date: FFaker::Time.date,
    end_date: FFaker::Time.date,
    teacher_id: FFaker::Random.rand(1..100),
  )
end