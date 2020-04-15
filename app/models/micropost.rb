class Micropost < ApplicationRecord
  belongs_to :user
  
  validates :content, presence: true, length: { maximum: 255 }
  
  # has_many :user
  has_many :favorites
  has_many :likers, through: :favorites, source: :user
end
