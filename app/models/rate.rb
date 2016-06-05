class Rate < ApplicationRecord
  belongs_to :restaurant
end

# == Schema Information
#
# Table name: rates
#
#  id            :integer          not null, primary key
#  score         :integer
#  restaurant_id :integer
#  comment       :text
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#