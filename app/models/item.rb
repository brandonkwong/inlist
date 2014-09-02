class Item < ActiveRecord::Base  
  validates_presence_of :title, :description, :url, :image


  belongs_to :user
  belongs_to :category
  
end
