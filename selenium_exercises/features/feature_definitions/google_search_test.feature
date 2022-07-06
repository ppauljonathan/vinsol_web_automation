Feature: Google shows search results
	Scenario Outline: I have entered a text to search
		Given I am on the google homepage
		And I have populated the search bar with "<text>"
		When I submit the search result
		Then the search page bar should be equal to "<text>"
		Examples:
			|text|
			|Elon Musk|
			|Spacex|
			|Rails on Ruby|
			
