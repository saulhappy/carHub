class UserCar < ApplicationRecord
    belongs_to :user
    belongs_to :car

end
