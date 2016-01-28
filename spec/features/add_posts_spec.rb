require 'rails_helper'

RSpec.feature "adding posts" do

    scenario "allow a user to add a post" do

# Factory Girl - Commenting pre-FactoryGirl tests and repalcing with 
# FactoryGirl style testing
=begin
        visit new_post_path

        fill_in "Title", with: "My Title"
        fill_in "Body", with: "My Body"

        click_on("Create Post")
=end
        
        post = create(:post, title: "My other Title")
        
        visit post_path(post)

        expect(page).to have_content("My other Title")
        expect(page).to have_content("My New Body")

    end

end
