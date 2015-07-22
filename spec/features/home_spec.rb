require 'rails_helper'

feature "visiting the homepage" do
	scenario "the visitor gets home and sees welcome text" do 
		visit root_path
		expect(page).to have_text("Home page")		
	end
		
end