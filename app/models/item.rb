class Item < ActiveRecord::Base
  has_many :taggings, dependent: :destroy
  has_many :tags, through: :taggings
  has_many :comments

  validates_presence_of :title, :description, :url, :image

  belongs_to :user
  belongs_to :category
end
