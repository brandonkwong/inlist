class Item < ActiveRecord::Base
  has_many :taggings, dependent: :destroy
  has_many :tags, through: :taggings

  validates_presence_of :title, :description, :url, :image

  belongs_to :user
  belongs_to :category
end
