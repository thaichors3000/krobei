class Teacher < ApplicationRecord
  validates: first_name, presence: true
end
