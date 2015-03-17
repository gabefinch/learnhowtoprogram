require 'rails_helper'

describe "the edit lesson process" do
  it "updates lesson" do
    visit lessons_path
    click_on 'Add a new lesson'
    fill_in 'Name', :with => 'Intermediate Githubology'
    fill_in 'Text', :with => 'Git add all'
    click_on 'Create Lesson'
    click_on 'Edit'
    fill_in 'Name', :with => 'Github advanced'
    fill_in 'Text', :with => 'Git add all'
    click_on 'Update Lesson'
    expect(page).to have_content 'Github advanced'
  end

end
