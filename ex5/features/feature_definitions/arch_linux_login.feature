Feature: Check login in arch linux forum
	Scenario: Correct login details
		Given We are on arch linux login page
		When We login with correct username and password
		Then We are redirected to login page

	Scenario: Username Incorrect
		Given We are on arch linux login page
		When We login with incorrect username
		Then We are redirected to error page

	Scenario: Password Incorrect
		Given We are on arch linux login page
		When We login with incorrect password
		Then We are redirected to error page
	
	Scenario: Both Incorrect
		Given We are on arch linux login page
		When We login with incorrect username and password
		Then We are redirected to error page

