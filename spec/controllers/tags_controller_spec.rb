require 'rails_helper'

RSpec.describe TagsController, :type => :controller do

  let :valid_attributes do
    { name: "" }
  end

describe "delete tag" do
  before do
    @test_tag = Tag.create! valid_attributes
  end
  it "should delete a record of the tag from the database" do
    expect do
      delete :destroy, id: @test_tag.id
    end
  end
  it "should redirect to the root path" do
      delete :destroy, id: @test_tag.id
      expect(response).to redirect_to root_path
  end
end

end


