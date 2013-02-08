require 'spec_helper'

describe "Static Pages" do

  describe "Home page" do

    it "should have the content 'Human Writes'" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      visit '/static_pages/home'
      page.should have_content('Human Writes')
    end

    it "should have the right title" do
        visit '/static_pages/home'
        page.should have_selector('title', 
                                  :text => "Human Writes | Home")
    end
  end

  describe "Help page" do

      it "should have the content 'Help'" do
          visit '/static_pages/help'
          page.should have_content('Help')
      end

      
    it "should have the right title" do
        visit '/static_pages/help'
        page.should have_selector('title', 
                                  :text => "Human Writes | Help")

    end
  end

  describe "About page" do

      it "should have the content 'About Us'" do
          visit '/static_pages/about'
          page.should have_content('About Us')
      end
      it "should have the content 'Nukomeet'" do
          visit '/static_pages/about'
          page.should have_content('Nukomeet')
      end

    it "should have the right title" do
        visit '/static_pages/about'
        page.should have_selector('title', 
                                  :text => "Human Writes | About Us")
    end

  end
end

