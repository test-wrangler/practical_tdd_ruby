# Overview

This exercise will demonstrate some of the tradeoffs that we make when using a conventional TDD approach (inside-out).

# Exercise

Our customers are loving the app so far, but they're starting to get a little bit tired of tacos. They want to spruce things up a bit by adding burritos to the menu. For the purpose of demonstration, let's pretend that while we know tacos and burritos will be mostly the same, there will be some functionality between them that differs. Given this, we'll need the ability to distinguish between them. We'll do this by creating a `MenuItem` model that can represent our Tacos and Burritos using single table inheritance. If you're not sure how to do this, feel free to peek at the solution. Once you have the migration, you'll need to create a new `MenuItem` model, change the `Taco` model to inherit from `MenuItem`, and update the associations, views, and controller code to use our new `MenuItem` model instead of our `Taco` model.

I've temporarily disabled our two feature tests to demonstrate a weakness of relying too much on unit tests. To see what I mean, as you're updating the code to work with menu items insetad of tacos, don't change the logic in the controller. You should still be able to get all of your tests to green even though the controller logic clearly needs to be updated to work with menu items instead of tacos. Once your unit and integration tests are green, enable the feature tests again and see that they're failing. Fix the code to make the feature tests work.
