class UserSerializer < ActiveModel::Serializer
    attributes :username, :profile_pic, :email
    has_many :user_destinations
end