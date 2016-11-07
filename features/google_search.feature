Feature: Google search

Scenario: Find and visit wikipedia page
	Given I am on the Google homepage
	Then I will search for text
	Then I will click the wikipedia link
	Then I should see wikipedia page
	Then I should see search term description
	Then I will take "wikipage" screenshot

Scenario: Find and visit next after wikipedia page
	Given I am on the Google homepage
	Then I will search for text
	Then I will click the next after wikipedia link
	Then I should see non-wikipedia page
	Then I should see search term description
	Then I will take "other_page" screenshot
