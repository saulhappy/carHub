class Car < ApplicationRecord
    has_one :user, through: :user_car
    has_many :maint_records

    validates :make, presence: true
end
