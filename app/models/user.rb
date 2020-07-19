class User < ApplicationRecord
    has_many :user_destinations
    has_many :destinations, through: :user_destinations
    
    has_many :plans
    has_many :activities, through: :plans

    has_secure_password

    validates :username, uniqueness: true
end
