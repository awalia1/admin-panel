class Student < ApplicationRecord
    validates :age, numericality: { less_than_or_equal_to: 150,  only_integer: true }
end
