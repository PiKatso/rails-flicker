class Post < ApplicationRecord
  validates :content, :presence => true
  validates :image, :presence => true
  has_many :comments
  belongs_to :user
end
