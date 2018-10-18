# frozen_string_literal: true
Then "stop" do
  binding.pry
end

When('I visit the site') do
  visit root_path
end

When('I click on {string}') do |element_text|
  click_on element_text
end

When("I visit the create page") do
  visit new_article_path
end

When("I fill in {string} with {string}") do |field, content|
  fill_in field, with: content
end

When("I select {string} as the category") do |option|
  select option, from: 'article_category_id'
end

Then("I click {string}") do |button|
  click_on button
end

And("there should be a Article with header {string} in the database") do |expected_header|
  expect(Article.last.header).to eq expected_header
end 