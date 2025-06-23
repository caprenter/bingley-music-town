Feature:
When visiting certain Venue pages

  @headings
  Scenario Outline: I should see a previous events section:.
    Given I am on <venue-page>
    Then I should see the heading "Previous Events"

	Examples:
	  | venue-page |
    | "venues/myrtle_park" |
    | "/venues/five_rise_records" |
    | "venues/martinez_bingley_wine_shop__wine_bar" |

