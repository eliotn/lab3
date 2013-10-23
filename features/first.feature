Feature: 
  As a user of RottenPotatoes
  In order to add a movie
  I want to be able to add a movie with a particular title

Scenario: Adding a movie
Given I am on the RottenPotatoes homepage, 
When I follow Add new movie,
Then I should be in the Create Movie Page.
When I fill in the Title with Men in Black, 
And I select PG-13 from Rating,
And I press Save Changes,
Then I should be in the RottenPotatoes page,
And I should see Men in Black
