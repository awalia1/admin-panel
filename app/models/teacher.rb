class Teacher < ApplicationRecord

    def full_name
        self.first_name + ' ' + self.last_name
    end
    
    has_many :cohorts
    validates :age, numericality: { less_than_or_equal_to: 150,  only_integer: true }
end
