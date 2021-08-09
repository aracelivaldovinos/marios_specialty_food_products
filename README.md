# Mario's Specialty Coffee Products

#### A website for viewing coffee products and their reviews

#### By Araceli Valdovinos

## Technologies Used

* _Ruby_
* _Postgres_
* _Ruby Gem: rspec, pry, sinatra, sinatra-contrib, capybara, pg_
* _HTML_
* _Bootsrap\CSS_



## Description
_This project demostrates mastery in setting up a Rails project with Active Record with the following instructions:_

_You're in the running for a freelance development job as the developer for Mario's Speciality Coffee Products (or another fictional company of your choosing). First, Mario wants to make sure you're the right person for the job. He's asked you for an MVP and wants it by 5:00 tonight. The stakes are higher than usual, since Mario's old site had thousands of unique visitors each day. If you can get the job, this is a great way to increase your profile as a developer._

_In particular, Mario is concerned about the information in his database being correct; your goal for today is to have the most comprehensive validations and callbacks to ensure information is properly saved and formatted in the database._

* _Database_
_The site should have functionality to review products so your database should include a one-to-many relationship between Products and Reviews. All products must have a name, cost and country_of_origin. All reviews should have an author, content_body and rating. (A rating can be a number between 1 and 5.) You can include other fields of your choosing as well._

* _Landing Page_
_The landing page should include basic information about the company and should allow users to easily navigate to other areas of the site. This page should also include the three most recently added products and the product with the most reviews. See more information in the Scopes section below._

* _Products_
_The site needs to include a products section with a list of the tasty products that Mario sells. Each product should be clickable with a detail view._

_Users should be able to add, update and delete new products. Don't worry about user authentication. Assume everyone who visits the site is an admin for now. Users should be able to click an individual product to see its detail page. (You will not be expected to show the product's average rating. That's included in the further exploration section.) Users should be able to add a review to a product._

* _Scopes_
_Your site should use scopes to display the following information on the site:_

* * _The product with the most reviews._
* * _The three most recently added products._
* * _All products made in the USA for buyers that want to buy local products._

* _Validations_
_Your site should include validations for the following:_

* * _All fields should be filled out, including rating._
* * _Rating can only be an integer between 1 and 5._
* * _The review's content_body must be between 50 and 250 characters._

* _Callbacks_
_Your site should include a callback for the following:_

* * _All products are automatically titleized (first letter of each word capitalized) before they are saved to the database._

* _Seeding_
_Your project should include seed data for 50 products and 250 reviews. Use Faker with a loop to seed the database._

* _Flash Messages_
_The project should include flash success and error messages for creating products and reviews.
Overall Styling_
_You'll be demoing this site to the CEO of Mario's Specialty Foods, so it should look presentable._

## Setup/Installation Requirements
* _This project uses postgres, inorder to download use the following link: [Postgres Download](https://www.postgresql.org/download/)_
* _To recreate the database enter the following command in the terminal/command line:_
    * _createdb volunteer_tracker_
    * _psql volunteer_tracker < database_backup.sql_
    * _createdb -T volunteer_tracker volunteer_tracker_test_
* _Clone that repository down to your desktop._
* _Navigate to the cloned folder and run `bundle install` in the terminal/command line to download dependencies_
* _Open cloned folder in the editor of your choice_
* _To run test use `rspec` on the root directory of the cloned project command line_
* _To run app in browser use `ruby app.rb` on the root directory of the cloned project command line, then enter `http://localhost:4567` in the browser_


## Known Bugs/Goals
* 


## License
_[MIT](https://opensource.org/licenses/MIT) (c) 2021 Araceli Valdovinos_


## Contact Information
_Araceli Valdovinos araceli.valdovinos@outlook.com_
