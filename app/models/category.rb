class Category < ActiveRecord::Base
  validates_presence_of :name
  belongs_to :user
  has_many :items
end
