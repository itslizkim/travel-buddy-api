class PlanSerializer < ActiveModel::Serializer
    attributes :date, :time, :username, :activity_id
    has_one :activity
    has_one :user
end