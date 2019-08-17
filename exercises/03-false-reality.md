# False Reality

In this exercise, we'll add some new functionality to demonstrate one of the main problems with test doubles (and even to an extent, unit tests). Normally, we want to try to add or change specs to drive out our new functionality. However, for the purpose of keeping the demonstration simple, we're going to change our application code before changing our specs.

Our users requested that we add functionality that ensures that a taco can't be added to their cart if it contains ingredients that they're allergic to. For the purpose of making this demonstration simple, I'm just throwing an error if we try to add a taco that contains allergens to the cart. Take a look at the code diff on GitHub for this commit or open the code for the spec and models to see the changes that I made.

Our users loved the allergen functionality and have now requested that we add functionality that allows them to add metadata to track who added an ingredient. To enable this new functionality, we'll introduce an Ingredient model that we can use to refer to our ingredients instead of using an array of items (like we're doing now).

## Steps

1. I created a migration for you that creates the Ingredients table and updates the columns on our User and Taco columns to references this new model. If you want to take a look, the migration is located at `db/migrate/20190817215026_create_ingredients.rb`. Run the migration: `bin/rails db:migrate`.
2. Add the ingredients association to tacos: `has_and_belongs_to_many :ingredients`.
3. Add the ingredients association to users as "allergies": `has_and_belongs_to_many :allergies, class_name: :Ingredient`.
4. You're done! Well, actually not really, but we'll talk about that in just a second.
