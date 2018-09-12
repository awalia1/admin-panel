class Teacher < ApplicationRecord
    has_many :cohorts
    validates :age, numericality: { less_than_or_equal_to: 150,  only_integer: true }
end
