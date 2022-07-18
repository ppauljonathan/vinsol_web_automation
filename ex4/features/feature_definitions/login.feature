Feature: Login to Arch Linux forum
	Scenario: We login with correct details on Arch Linux login
		Given We are on Arch Linux login page
		When We enter the correct details in the fields
		Then We are logged in
