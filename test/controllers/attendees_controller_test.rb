require 'test_helper'

class AttendeesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @attendee = attendees(:one)
  end

  test "should get index" do
    get attendees_url
    assert_response :success
  end

  test "should get new" do
    get new_attendee_url
    assert_response :success
  end

  test "should create attendee" do
    assert_difference('Attendee.count') do
      post attendees_url, params: { attendee: { authorized: @attendee.authorized, city: @attendee.city, company: @attendee.company, confirmed: @attendee.confirmed, description: @attendee.description, email: @attendee.email, externalImagePath: @attendee.externalImagePath, externalThumbnailPath: @attendee.externalThumbnailPath, facebook: @attendee.facebook, firstName: @attendee.firstName, isSpeaker: @attendee.isSpeaker, language: @attendee.language, lastName: @attendee.lastName, moderated: @attendee.moderated, networkingCode: @attendee.networkingCode, phone: @attendee.phone, position: @attendee.position, privateInfo: @attendee.privateInfo, showEmail: @attendee.showEmail, showPhone: @attendee.showPhone, twitter: @attendee.twitter, vk: @attendee.vk, withdrawed: @attendee.withdrawed } }
    end

    assert_redirected_to attendee_url(Attendee.last)
  end

  test "should show attendee" do
    get attendee_url(@attendee)
    assert_response :success
  end

  test "should get edit" do
    get edit_attendee_url(@attendee)
    assert_response :success
  end

  test "should update attendee" do
    patch attendee_url(@attendee), params: { attendee: { authorized: @attendee.authorized, city: @attendee.city, company: @attendee.company, confirmed: @attendee.confirmed, description: @attendee.description, email: @attendee.email, externalImagePath: @attendee.externalImagePath, externalThumbnailPath: @attendee.externalThumbnailPath, facebook: @attendee.facebook, firstName: @attendee.firstName, isSpeaker: @attendee.isSpeaker, language: @attendee.language, lastName: @attendee.lastName, moderated: @attendee.moderated, networkingCode: @attendee.networkingCode, phone: @attendee.phone, position: @attendee.position, privateInfo: @attendee.privateInfo, showEmail: @attendee.showEmail, showPhone: @attendee.showPhone, twitter: @attendee.twitter, vk: @attendee.vk, withdrawed: @attendee.withdrawed } }
    assert_redirected_to attendee_url(@attendee)
  end

  test "should destroy attendee" do
    assert_difference('Attendee.count', -1) do
      delete attendee_url(@attendee)
    end

    assert_redirected_to attendees_url
  end
end
