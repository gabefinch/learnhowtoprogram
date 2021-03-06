require 'rails_helper'

describe "the add a lesson process" do
  it "adds a new lesson" do
    visit lessons_path
    click_on 'Add a new lesson'
    fill_in 'Name', :with => 'Intermediate Githubology'
    fill_in 'Text', :with => 'Git add all'
    click_on 'Create Lesson'
    expect(page).to have_content 'Lessons'
  end

  it "gives an error when no information is entered" do
    visit new_lesson_path
    click_on 'Create Lesson'
    expect(page).to have_content 'errors'
  end
end
