FactoryBot.define do
  factory :teacher do
    first_name { 'Thaichor' }
    last_name { 'Seng' }
    email { 'thaichor@gmail.com' }
    phone { '016986888' }
    date_of_birth { Time.zone.today }
  end
end