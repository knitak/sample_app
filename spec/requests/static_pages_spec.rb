require 'spec_helper'

describe "StaticPages" do

	let(:base_title) {"Ruby on Rails Tutorial Sample App"}

  subject { page }

  describe "Home page" do
    before { visit root_path }

    #it "should have the h1 'Sample App'" do
    	# usa a função Capybara visit pr simular a visita a URI/static_pages/home num browser
    	#visit root_path
    	#c esta linha
    it { should have_selector('h1', :text =>'Sample App') }
    

    #it "should have the base title" do
      #visit root_path
    it { should have_selector 'title',
                        :text => full_title('')) }
    

    #it "should not have a custom page title" do
      #visit root_path
    it { should_not have_selector 'title', :text => '| Home' }
    

    #it "should have the right title 'Home'" do
    #	visit '/static_pages/home'
    #	page.should have_selector('title', :text => "#{base_title} | Home")
    #end
  end

  describe "Help page" do
    before { visit help_path }
  	#it "should have the h1 'Help'" do
  	#	visit root_path
  	it { should have_selector('h1', :text => 'Help') }
  	
  	#it "should have the right title 'Help'" do
    #	visit root_path
    it { should have_selector('title', text: full_title('Help')) }
    
  end 

  describe	 "About page" do
     before { visit about_path }
  	#it "should have the h1 'About us'" do
  	#	visit root_path
  	it { should have_selector('h1',    text: 'About') }
  	
  	#it "should have the right title 'About Us'" do
    #	visit root_path
    it { should have_selector('title', text: full_title('About Us')) }
  
  end

  describe	 "Contact page" do before { visit about_path }
     before { visit contact_path }
  	#it "should have the h1 'Contact'" do
  	#	visit root_path
  	it { should have_selector('h1',    text: 'Contact') }
  	
    #  	it "should have the title 'Contact'" do
    #	visit root_path
    it { should have_selector('title', text: full_title('Contact')) 
    
  end
end
