# Overview

Now that we've looked at the inside-out approach for TDD, we'll take a look at how to implement and outside-in approach.

# Exercise

Add some functionality to show users the total price of the items in their cart. Start with the feature spec and make sure that it fails as you expect. For the purpose of demonstrating the slowness of feature specs that have to run with Javascript, add the `js:true` flag to your feature spec so that it opens up a browser to run. After you have the feature spec failing, drop down into integration tests (request tests) to flesh-out the functionality so that you have a quick feedback loop. Once you have the integration tests passing, follow this pattern of implementing a small change in the feature spec and then dropping down into the integration spec to flesh things out.
