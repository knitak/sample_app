require 'spec_helper'

describe "User pages" do
subject {page}

  describe "signup page" do
  	before { visit signup_path}
    it {should have_selector('h1', text:'Sign up')}
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
    it {should have_selector('title', text: full_title('Sign up'))}
  end
end
