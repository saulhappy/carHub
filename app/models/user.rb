class User < ApplicationRecord
    has_secure_password

    has_one :family
    has_many :user_cars
    has_many :cars, through: :user_cars

    validates :name, presence: true
    validates :name, uniqueness: true
end
