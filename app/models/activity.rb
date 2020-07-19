class Activity < ApplicationRecord
    belongs_to :destination
    
    has_many :plans
    has_many :users, through: :plans

end
