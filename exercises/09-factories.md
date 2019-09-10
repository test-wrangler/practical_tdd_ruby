# Overview

In this exercise, we'll look at how to use factory methods to fix the problem of manually setting up data in each of our tests.

# Exercise

Our customers want to be able to run reports on the menu items in their data. To make sure they're reports have the necessary data, the customer has requested that we add validation to make sure that our menu items have a name and a price. Add validations to our `MenuItem` model that enforce these constraints.

We want to make sure that our menu items are valid when they're created. This means ensuring that they have a name and a price. Add some validations to the menu item model to ensure that menu items can only be created if they're valid.

Once you add these validations, you'll notice that several tests will fail because we're not providing the necessary data to pass the validations when creating the records. This is because we're manually setting up our objects in our tests. To fix the tests, change each of the places that we're creating or instantiating objects to use factories and then define them. You can see how to do all of this in the diff of the solution.
