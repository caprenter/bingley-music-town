Feature:
When visiting the homepage

  @header_menu
	Scenario: I am not logged on I should see the main menu.
    Given I am on "/"
    Then I should see the link "About" in the "navigation" region	
		And I should see the link "Blog" in the "navigation" region
		And I should see the link "Help Us" in the "navigation" region
		And I should see the link "Sing & Play" in the "navigation" region
		And I should see the link "Live Music" in the "navigation" region
		And I should see the link "Contact" in the "navigation" region


	Scenario: Verify Open Graph title on a page
    Given I am on "/"
        Then the meta "og:site_name" should be "Bingley Music Town"
		Then the meta "og:image" should contain "splashes/splash_"



  @assets
	Scenario: I am not logged on I should see working images and links
  	Given I am on "/"
		And the images should not return 404
		
	
	@intro
	Scenario: I am not logged on I should see the introductory text
  	Given I am on "/"
		Then I should see "Bingley Music Town brings together the people that care about music in our area, to make sure there are great musical opportunities for everyone now, and into the future."

 @footer_menu
	Scenario: I am not logged on I should see the footer menu.
    Given I am on "/"
    Then I should see the link "Contact"
    And I should see the link "Home"
	And I should see the link "About"
	And I should see the link "Meet"
	And I should see the link "Help Us"
	And I should see the link "People"
	And I should see the link "Music Groups"
	And I should see the link "Regular Activities"
	And I should see the link "Tuition"
	And I should see the link "Instruments"
	And I should see the link "Effects Library"
	And I should see the link "Upcoming Events"
	And I should see the link "Previous Events"
	And I should see the link "Venues"
	And I should see the link "Resources"
	And I should see the link "Contact"

 
  #@search
  #Scenario: I am not logged on I can see the search button
  ##  Given I am on the homepage
  #  Then I should see the "Search" button
		
