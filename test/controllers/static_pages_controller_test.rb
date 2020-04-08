require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  def setup
    @base_title = 'Ruby on Rails Tutorial Sample App'
  end

  test 'should get root' do
    get root_url
    assert_response :success
  end

  test 'should get home' do
    get static_pages_home_url
    assert_select 'title', "#{@base_title}"
    assert_response :success
  end

  test 'should get help' do
    get static_pages_help_url
    assert_select 'title', "Help | #{@base_title}"
    assert_response :success
  end
  # <% provide(:title, "Contact") %>
  # <h1>Contact</h1>
  # <p>
  #   Contact the Ruby on Rails Tutorial about the sample app at the
  #   <a href="https://www.railstutorial.org/contact">contact page</a>.
  # </p>
  test 'should get about' do
    get static_pages_about_url
    assert_select 'title', "About | #{@base_title}"
    assert_response :success
  end

  test 'should get contact' do
    get static_pages_contact_url
    assert_select 'title', "Contact | #{@base_title}"
    assert_response :success
  end
end
