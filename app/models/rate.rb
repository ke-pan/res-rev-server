class Rate < ApplicationRecord
  belongs_to :restaurant, counter_cache: true
  belongs_to :user
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
#  user_id       :integer
#
