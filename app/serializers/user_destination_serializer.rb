class UserDestinationSerializer < ActiveModel::Serializer
  attributes :user_id, :destination_name
  has_one :user
  has_one :destination
end