require "application_system_test_case"

class SamplesTest < ApplicationSystemTestCase
  def setup
    @user = create(:user)
    create(:category, name: "Default")
  end

  test "visiting the index" do
    sign_in @user
    visit new_sample_path

    fill_in "sample[title]", with: "Special Test"
    select "Default", from: "sample[category_id]"
    select "Public", from: "sample[status]"
    fill_in "sample[description]", with: "This is a special description."

    fill_in "sample[sample_files_attributes][0][path]", with: "app/models/special.rb"
    fill_in "sample[sample_files_attributes][0][contents]", with: "class Special\nend"
    fill_in "sample[sample_files_attributes][0][description]", with: "This is a special class."

    click_on "Save"

    assert_selector "h1", text: "Special Test"
    assert_selector "pre", text: "class Special\nend"
  end
end
