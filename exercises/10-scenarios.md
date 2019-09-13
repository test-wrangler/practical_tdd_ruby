# Overview

This exercise will demonstrate a strategy to handle scenarios for a feature when writing integration tests.

# Exercise

The client would like to introduce membership levels for their customers to give them discounts based on their membership level. To do this, we want to add the following memberships and apply the discounts when calculating the total for the items in the cart:

- Gold: \$5
- Silver: \$2
- Bronze: \$1

Use integration tests in the cart spec to drive out this functionality. We'll just use a simple text field on the user model to track the membership level.
