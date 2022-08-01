require "application_system_test_case"

class ComicsSearchesTest < ApplicationSystemTestCase

  # test "test_marvel_search" do
  #   stubs = Faraday::Adapter::Test::Stubs.new
  #   stubs.get("/api") do |env|
  #     # optional: you can inspect the Faraday::Env
  #     assert_equal "/api", env.url.path
  #     [
  #       200,
  #       { 'Content-Type': "application/javascript" },
  #       '{"origin": "127.0.0.1"}',
  #     ]
  #   end

  #   # uncomment to trigger stubs.verify_stubbed_calls failure
  #   # stubs.get('/unused') { [404, {}, ''] }

  #   cli = client(stubs)
  #   assert_equal "127.0.0.1", cli.httpbingo("api")
  #   stubs.verify_stubbed_calls
  # end

  # test "visiting the index" do
  #   visit root_url

  #   assert_selector "h1", text: "ComicsSearch"
  # end

  # test "displays as much cards on index as Comics from the search" do
  #   login_as users(:gustavo)
  #   visit root_url
  #   marvel_api_request

  #   assert_selector ".comic_card", count: @comics.count
  # end

  # test "lets a signed in user like a comic book" do
  #   login_as users(:gustavo)
  #   visit root_url

  #   fill_in "search", with: "deadpool"
  # end
end
