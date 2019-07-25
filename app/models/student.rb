class Student < ApplicationRecord
    belongs_to :instructor

    validates :name, presence: true, format: {with: /\A[ a-zA-Z]+\z/}
    validates :age, numericality: {greater_than_or_equal_to: 18}
end
