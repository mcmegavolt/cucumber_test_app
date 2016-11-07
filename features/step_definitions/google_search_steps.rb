Given(/^I am on the Google homepage$/) do
  visit 'http://www.google.com'
end

Then(/^I will search for text$/) do
  fill_in 'q', with: search_text
  submit_form
end

Then(/^I will click the wikipedia link$/) do
  click_link wiki_page_title
end

Then(/^I should see wikipedia page$/) do
  expect(page).to have_current_path(/wikipedia.org/, url: true)
end

Then(/^I should see search term description$/) do
  expect(page).to have_content(search_text)
end

Then(/^I will click the next after wikipedia link$/) do
  click_next_after_wikipedia
end

Then(/^I should see non\-wikipedia page$/) do
  expect(page).to_not have_current_path(/wikipedia.org/, url: true)
end

Then(/^I will take "([^"]*)" screenshot$/) do |file_name|
  page.save_screenshot("#{file_name}.png")
end
