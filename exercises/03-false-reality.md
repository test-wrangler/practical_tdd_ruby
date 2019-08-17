# Overview

In this exercise, we'll add some new functionality to demonstrate one of the main problems with mocking / test doubles (and even to an extent, unit tests).

# Exercise

Normally, we want to try to add or change specs before changing production code. However, for the purpose of keeping the demonstration simple, we're going to change our application code before changing our specs.

Our clients loved the allergen functionality that we added and have now requested that we add functionality that allows them to add metadata to track who added an ingredient so that they can talk to that person about the ingredient to make sure it doesn't contain anything else their customers might be allergic to. To enable this new functionality, introduce an Ingredient model that we can use to refer to our ingredients instead of using an array of items (like we're doing now).
