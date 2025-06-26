Feature:
When visiting the pages in the Regular Activities section

  @funders
	Scenario: I should see relevant funders acknowledged.
    Given I am on "/regular-activities"
	    Then I should see the heading "Regular Activities"

@menu
	Scenario: I am not logged on I should see the following listings.
    Given I am on "/regular-activities"
    Then I should see "Last Wednesday of the month"
    And I should see "First Monday of the month"
    And I should see "Third Wednesday of the month"
    And I should see "First Thursday of the month"
    And I should see "Third Thursday of the month"
    And I should see "Second Sunday of the month"
    And I should see "Third Sunday of the month"
    And I should see "Last Sunday of the month"