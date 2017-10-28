# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

### Background knowledge:

MVC fundamentals
routing fundamentals
database relationships

### Learning Goals (new):

Routes
Nested resources
Views
forms for nested resources
Associations
has_many
belongs_to

### Learning Goals (reinforcing):

view helpers
partials
redirecting
validations
migrations
path helpers
flash notices

## User stories

Before you begin coding, take some time to read these user stories together with your partner in order to get a sense of what you're going to be making.

As a user...

1. On the homepage I am presented with a list of all the products and a link to create a new product. a. Each product in the list is displayed with its name, description, and price, and has a link to go to its show page.

2. If I click to create a new product I am taken to a page with a form. Submitting this form, which has three fields (name, description, and price in cents) takes me to the show page for the new product.

3. On the homepage if I click a product I am taken to a page with b. its name, description, and price. a. two buttons: one to edit and the other to delete the product.

4. If I go to the product show page I am presented with a list of reviews about the product. Each review includes the text of the review and the date and time at which it was written. The page also has a form with one text field I can fill in and submit to create a new review for the product.

5. Next to each review on the product show page I should see a link to delete the review and a link to go to a form that allows me to edit the review.
