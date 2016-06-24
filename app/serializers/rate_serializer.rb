class RateSerializer < ActiveModel::Serializer
  attributes :id, :score, :comment
  belongs_to :user
end
