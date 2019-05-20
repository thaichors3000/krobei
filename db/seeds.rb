# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

for i in 1..100
  Teacher.create([
    { first_name: FFaker::Name.first_name,
      last_name: FFaker::Name.last_name,
      email: FFaker::Internet.email,
      phone: FFaker::PhoneNumber.phone_number,
      date_of_birth: FFaker::Time.date
    }
  ])

  Student.create([
    { first_name: FFaker::Name.first_name,
      last_name: FFaker::Name.last_name,
      email: FFaker::Internet.email,
      phone: FFaker::PhoneNumber.phone_number,
      parents_phone: FFaker::PhoneNumber.phone_number,
      date_of_birth: FFaker::Time.date
    }
  ])

  Course.create([
    { name: FFaker::Education.major ,
      start_date: FFaker::Time.date,
      end_date: FFaker::Time.date,
      teacher_id: i
    }
  ])
end