require 'spec_helper'

describe "StaticPages" do

	#let(:base_title) {"Ruby on Rails Tutorial Sample App"}

  subject { page }

  #shared_examples_for "all static pages" do
   # it { should have_selector('h1', text: heading) }
    #it { should have_selector('h1', text: full_title(page_title)) }
  #end

  describe "Home page" do
    before { visit root_path }
    #let(:heading) {'Sample App'}
    #let(:page_title) {''}

    #it_should_behave_like "all static pages"

    #it "should have the h1 'Sample App'" do
    	# usa a função Capybara visit pr simular a visita a URI/static_pages/home num browser
    	#visit root_path
    	#c esta linha
    it { should have_selector('h1', :text =>'Sample App') }
    

    #it "should have the base title" do
      #visit root_path
    it { should have_selector 'title',:text => full_title('') }
    

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
    #let(:heading) {'Help'}
    #let(:page_title) {'Help'}

    #it_should_behave_like "all static pages"

  	#it "should have the h1 'Help'" do
  	#	visit root_path
  	it { should have_selector('h1', :text => 'Help') }
  	
  	#it "should have the right title 'Help'" do
    #	visit root_path
    it { should have_selector('title', text: full_title('Help')) }
    
  end 

  describe	 "About page" do
    before { visit about_path }
    #let(:heading) {'About'}
    #let(:page_title) {'About Us'}

    #it_should_behave_like "all static pages"
  	#it "should have the h1 'About us'" do
  	#	visit root_path
  	it { should have_selector('h1',    text: 'About') }
  	
  	#it "should have the right title 'About Us'" do
    #	visit root_path
    it { should have_selector('title', text: full_title('About Us')) }
  
  end

  describe	 "Contact page" do 
    before { visit contact_path }

    #let(:heading) {'Contact'}
    #let(:page_title) {'Contact'}

    #it_should_behave_like "all static pages"
  	#it "should have the h1 'Contact'" do
  	#	visit root_path
  	it { should have_selector('h1',    text: 'Contact') }
  	
    #  	it "should have the title 'Contact'" do
    #	visit root_path
    it { should have_selector('title', text: full_title('Contact')) }
  end
  
  describe   "signup page" do 
    before { visit signup_path }

    #let(:heading) {'Sign up'}
    #let(:page_title) {'Sign up'}

    #it_should_behave_like "all static pages"
    it { should have_selector('h1',    text: 'Sign up') }
    it { should have_selector('title', text: full_title('Sign up')) }
  end
  #end

  #it "should have the right links on the layout" do
  #visit root_path

  #click_link "About"
  #page.should have_selector 'title', text: full_title('About Us')

  #click_link "Help"
  #page.should have_selector 'title', text: full_title('Help')

  #click_link "Contact"
  #page.should have_selector 'title', text: full_title('Contact')

  #click_link "Home"
  #click_link "Sign up now!"
  #page.should have_selector 'title', text: full_title('Sign up')

  #click_link "sample app"
  #page.should have_selector 'title', text: full_title(' | Home') 
  
  #end
end