class Car < ApplicationRecord
    has_one :user, through: :user_car
    has_many :maint_records
end
