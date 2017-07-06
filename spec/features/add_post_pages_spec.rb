require 'rails_helper'

describe "add a post" do

  it "follows path of adding a post with no user" do
    visit root_path
    click_on 'New Post'
    expect(page).to have_content 'Log in'
  end

  it "follows path of adding a post while signed it" do
    user = FactoryGirl.build(:user)
      visit root_path
      login_as(user, :scope => :user)
      click_on 'New Post'
      fill_in 'Content', :with => 'Post Test'
      fill_in 'Image', :with => 'https://i.vimeocdn.com/portrait/58832_300x300'

      click_on 'Create Post'
      save_and_open_page
      expect(page).to have_content 'Post Test'
  end

end


# like pry for rspec testing:::::: save_and_open_page :::::::
