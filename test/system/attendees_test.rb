require "application_system_test_case"

class AttendeesTest < ApplicationSystemTestCase
  setup do
    @attendee = attendees(:one)
  end

  test "visiting the index" do
    visit attendees_url
    assert_selector "h1", text: "Attendees"
  end

  test "creating a Attendee" do
    visit attendees_url
    click_on "New Attendee"

    fill_in "Authorized", with: @attendee.authorized
    fill_in "City", with: @attendee.city
    fill_in "Company", with: @attendee.company
    fill_in "Confirmed", with: @attendee.confirmed
    fill_in "Description", with: @attendee.description
    fill_in "Email", with: @attendee.email
    fill_in "Externalimagepath", with: @attendee.externalImagePath
    fill_in "Externalthumbnailpath", with: @attendee.externalThumbnailPath
    fill_in "Facebook", with: @attendee.facebook
    fill_in "Firstname", with: @attendee.firstName
    fill_in "Isspeaker", with: @attendee.isSpeaker
    fill_in "Language", with: @attendee.language
    fill_in "Lastname", with: @attendee.lastName
    fill_in "Moderated", with: @attendee.moderated
    fill_in "Networkingcode", with: @attendee.networkingCode
    fill_in "Phone", with: @attendee.phone
    fill_in "Position", with: @attendee.position
    fill_in "Privateinfo", with: @attendee.privateInfo
    fill_in "Showemail", with: @attendee.showEmail
    fill_in "Showphone", with: @attendee.showPhone
    fill_in "Twitter", with: @attendee.twitter
    fill_in "Vk", with: @attendee.vk
    fill_in "Withdrawed", with: @attendee.withdrawed
    click_on "Create Attendee"

    assert_text "Attendee was successfully created"
    click_on "Back"
  end

  test "updating a Attendee" do
    visit attendees_url
    click_on "Edit", match: :first

    fill_in "Authorized", with: @attendee.authorized
    fill_in "City", with: @attendee.city
    fill_in "Company", with: @attendee.company
    fill_in "Confirmed", with: @attendee.confirmed
    fill_in "Description", with: @attendee.description
    fill_in "Email", with: @attendee.email
    fill_in "Externalimagepath", with: @attendee.externalImagePath
    fill_in "Externalthumbnailpath", with: @attendee.externalThumbnailPath
    fill_in "Facebook", with: @attendee.facebook
    fill_in "Firstname", with: @attendee.firstName
    fill_in "Isspeaker", with: @attendee.isSpeaker
    fill_in "Language", with: @attendee.language
    fill_in "Lastname", with: @attendee.lastName
    fill_in "Moderated", with: @attendee.moderated
    fill_in "Networkingcode", with: @attendee.networkingCode
    fill_in "Phone", with: @attendee.phone
    fill_in "Position", with: @attendee.position
    fill_in "Privateinfo", with: @attendee.privateInfo
    fill_in "Showemail", with: @attendee.showEmail
    fill_in "Showphone", with: @attendee.showPhone
    fill_in "Twitter", with: @attendee.twitter
    fill_in "Vk", with: @attendee.vk
    fill_in "Withdrawed", with: @attendee.withdrawed
    click_on "Update Attendee"

    assert_text "Attendee was successfully updated"
    click_on "Back"
  end

  test "destroying a Attendee" do
    visit attendees_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Attendee was successfully destroyed"
  end
end
