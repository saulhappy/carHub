class Car < ApplicationRecord
    has_many :user_cars
    has_many :users, through: :user_car
    has_many :maint_records
    has_many :photos

    validates :make, presence: true
    validates :name, presence: true
end
