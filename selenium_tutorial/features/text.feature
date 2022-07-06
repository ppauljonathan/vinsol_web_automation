Feature: text enter test
	Scenario Outline: Text field can be populated
		Given I am on the lazy automation text page
		When I enter "<text>" into the text field
		Then text field is populated with "<text>"
	Examples:
	|text|
	|hello|
	|blah|
