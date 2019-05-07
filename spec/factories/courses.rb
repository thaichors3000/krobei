FactoryBot.define do
  factory :course do
    name { 'Ruby on Rails' }
    start_date { Time.zone.today }
    end_date { Time.zone.today }

    teacher
  end
end