class Restaurant < ApplicationRecord
  has_attached_file :picture

  has_many :rates

  validates_attachment :picture, presence: true,
    content_type: { content_type: ['image/jpeg', 'image/png'] },
    size: { in: 0..1.megabytes }
end

# == Schema Information
#
# Table name: restaurants
#
#  id                   :integer          not null, primary key
#  name                 :string
#  location             :string
#  description          :text
#  category             :string
#  open_at              :time
#  close_at             :time
#  score                :float
#  picture_file_name    :string
#  picture_content_type :string
#  picture_file_size    :integer
#  picture_updated_at   :datetime
#  created_at           :datetime         not null
#  updated_at           :datetime         not null
#
