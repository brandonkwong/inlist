require 'rails_helper'

RSpec.describe User, :type => :model do
  it "is invalid without a username" do
    nousername = User.new(username: "")
  end
  
end
