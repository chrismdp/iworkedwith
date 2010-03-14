require 'spec_helper'

describe LinksController do
  let(:link) { double(Link, :save => true).as_null_object }
  let(:links) { double("links", :build => link) }
  let(:user) { double(User, :links => links) }
  before(:each) do
    User.stub(:find).and_return(user)
  end
  describe "POST /users/:user_id/links" do
    it "redirects to index" do
      post :create, :link => {}, :user_id => user.id
      response.should redirect_to(user_links_path(user))
    end
  end
end
