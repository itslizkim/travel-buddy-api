class ActivitySerializer < ActiveModel::Serializer
    attributes :name, :location, :image_url
    has_one :destination
end