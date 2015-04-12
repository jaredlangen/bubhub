require 'spec_helper'

describe UsersController do

  describe "POST #create" do
    context "with valid attributes" do
      it "saves the new user in the database" do
        expect{
          post :create, user: FactoryGirl.attributes_for(:user)
        }.to change(User, :count).by(1)
      end
      it "redirects to the home page after saving" do
        post :create, user: FactoryGirl.attributes_for(:user)
        response.should redirect_to root_page_path
      end
    end
  end

end
