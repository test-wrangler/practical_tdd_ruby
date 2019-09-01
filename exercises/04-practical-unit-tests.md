# False Reality

Now that we're familiar with mockist-style unit testing, let's take a look at how we can make these tests more robust by converting them to a classist-style unit test.

## Steps

1. Remove the mocks from the specs in `cart_spec.rb` and use real objects instead. 💡 You can prepend `f` to a spec to focus in on that spec. Like this: `fit`.
