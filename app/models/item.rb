class Item < ActiveRecord::Base
  validates_presence_of :title, :description, :url, :image

  has_many :taggings, dependent: :destroy
  has_many :tags, through: :taggings
  has_many :comments

  belongs_to :user
  belongs_to :category

end
