class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :username, :presence => true, :uniqueness => true, :case_sensitive => false
  validates :email, :presence => true, :uniqueness => true
  validates :encrypted_password, :presence => true
  has_many :comments
  has_many :posts

  has_attached_file :avatar, :styles => {
     :medium => "300x300>", :thumb => "100x100#" },
     :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/
end
