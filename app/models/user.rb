class User < ActiveRecord::Base
  validates_presence_of :name
  validates :username, uniqueness: true, presence: true
  validates :email, uniqueness: true, presence: true
  validates :password, confirmation: true, presence: true

  has_secure_password

  has_many :items, dependent: :destroy
  has_many :categories, dependent: :destroy

  has_many :comments, dependent: :destroy
end
