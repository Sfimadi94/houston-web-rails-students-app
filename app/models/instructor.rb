class Instructor < ApplicationRecord
    has_many :students

    validates :name, presence: true, format: {with: /\A[ a-zA-Z]+\z/}
end
