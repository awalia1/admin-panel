class Student < ApplicationRecord

    def full_name
        self.first_name + ' ' + self.last_name
    end

    validates :age, numericality: { less_than_or_equal_to: 150,  only_integer: true }
end
