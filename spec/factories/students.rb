FactoryBot.define do
  factory :student do
    first_name { 'Thaichor' }
    last_name { 'Seng' }
    email { 'thaichor@gmail.com' }
    phone { '016986888' }
    parents_phone { '016986888' }
    date_of_birth { Time.zone.today }
  end
end