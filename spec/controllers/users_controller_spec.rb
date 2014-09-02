require 'rails_helper'

RSpec.describe UsersController, :type => :controller do
  let :valid_attributes do 
    { 
      name: "",
      username: "",
      email: "",
      passworld: ""
    }
  end

  describe "get index" do
    before do
      get :index
    end

    it "should render the index template succesfully" do
      expect(response).to render_template :index
      expect(response).to be_success
    end

    # it "should assign users to be all the users" do 
    #   expect(assigns(:users)). to_be_instance_of(users)
    # end
  end

  describe "get show" do
  end

  describe "get new" do
    before do 
      get :new
    end
    
    it "should render the new template succesfully" do
      expect(response).to render_template :new
      expect(response).to be_success
    end
    
    it "should assign user to be new" do
      expect(assigns(:user)).to be_a(User)
    end
  end

  describe "post create" do
    describe "succesfully saves" do
      it "should be saved to the database" do
        expect do
          post :create, user: valid_attributes
        end
      end

      it "should redirect to the root path" do
        expect(response).to render_template :root
        expect(response).to be_success
      end

      describe "unable to save" do
        let :invalid_attributes do
          {
            :name => nil,
            :username => nil,
            :email => nil,
            :passworld => nil
          }
        end

        it "should not create any new records in the database" do
          expect do
            post :create, user: invalid_attributes
          end
        end

        it "should rerender the new template" do
          post :create, user: invalid_attributes
          expect(response).to render_template :new
        end
      end
    end
  end


end
