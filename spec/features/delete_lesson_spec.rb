require 'rails_helper'

describe "the delete a lesson process" do
  it "deletes a lesson" do
    lesson = Lesson.create(:name => 'JQuery', :text => 'Know your library')
    visit lessons_path
    click_on "Delete"
    expect(page).to have_content 'successfully'
  end
end
