require 'rails_helper'

RSpec.describe Item, :type => :model do
it { should validate_presence_of(:title)}
it { should validate_presence_of(:description)}
it { should validate_presence_of(:url)}
it { should validate_presence_of(:image)}
 
it { should belong_to(:user) }
it { should belong_to(:category)}
end
