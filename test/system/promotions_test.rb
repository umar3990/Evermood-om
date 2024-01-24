require "application_system_test_case"

class PromotionsTest < ApplicationSystemTestCase
  setup do
    @promotion = promotions(:one)
  end

  test "visiting the index" do
    visit promotions_url
    assert_selector "h1", text: "Promotions"
  end

  test "should create promotion" do
    visit promotions_url
    click_on "New promotion"

    fill_in "Code", with: @promotion.code
    fill_in "Datetime", with: @promotion.datetime
    fill_in "Expiry date", with: @promotion.expiry_date
    fill_in "Free items", with: @promotion.free_items
    fill_in "Name", with: @promotion.name
    fill_in "Start date", with: @promotion.start_date
    click_on "Create Promotion"

    assert_text "Promotion was successfully created"
    click_on "Back"
  end

  test "should update Promotion" do
    visit promotion_url(@promotion)
    click_on "Edit this promotion", match: :first

    fill_in "Code", with: @promotion.code
    fill_in "Datetime", with: @promotion.datetime
    fill_in "Expiry date", with: @promotion.expiry_date
    fill_in "Free items", with: @promotion.free_items
    fill_in "Name", with: @promotion.name
    fill_in "Start date", with: @promotion.start_date
    click_on "Update Promotion"

    assert_text "Promotion was successfully updated"
    click_on "Back"
  end

  test "should destroy Promotion" do
    visit promotion_url(@promotion)
    click_on "Destroy this promotion", match: :first

    assert_text "Promotion was successfully destroyed"
  end
end
