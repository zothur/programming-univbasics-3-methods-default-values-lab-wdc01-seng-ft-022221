# Default Values: Meal Choice Lab

## Learning Goals

- Define a method that takes in required and optional arguments
- Use `puts` to output a string
- Define a return value

## Introduction

We've demonstrated the basics of defining methods, printing output, and
returning values. Let's combine the concepts we've shown you to create a "Meal
Choice" in our Ruby program.

## Instructions

We're attending a wedding and the newlyweds-to-be want to know what types of
food they should provide at the banquet. Define a method named `meal_choice`
that has **three** parameters:

- Two _required_ parameters for vegetables. Ex: `veg1` and `veg2`
- And an _optional_ parameter for `protein` with a default value of `tofu`

This method will serve a couple of purposes - we want to output a two
messages _and_ return one of the messages as a string.

The first message will always be the same:

```rb
"What a nutritious meal!"
```

The second message is structured to include all three parameters like so:

```rb
"A plate of #{protein} with #{veg1} and #{veg2}."
```

If the `meal_choice` method was run with `carrots`, `string beans`, and
`lentils`:

```sh
2.6.1 :001 > meal_choice('carrots', 'string beans', 'lentils')
What a nutritious meal!
A plate of lentils with carrots and string beans.
 => "A plate of lentils with carrots and string beans."
```

In addition, if we were to leave off the third parameter, `lentils`, we would
expect the following:

```sh
2.6.1 :002 > meal_choice('carrots', 'string beans')
What a nutritious meal!
A plate of tofu with carrots and string beans.
 => "A plate of tofu with carrots and string beans."
```

Notice above that the return value shown on last line is the same message as
what is output. You will need to compose this message in a way that you can
output it _and_ return it.

Write your solution in the file `lib/meal_choice.rb` using the information
provided below.

## Solving this Lab

Whether you're omnivorous, vegetarian, or vegan, you're going to be eating a
nutritious meal!

First, we should build out the empty method with `veg1` and `veg2` as required
parameters, and `protein` as an optional parameter with the default value of
`tofu`:

```rb
def meal_choice(veg1, veg2, protein = 'tofu')

end
```

For the implementation, the first message is always the same, so we can handle that
with a `puts` statement:

```rb
def meal_choice(veg1, veg2, protein = 'tofu')
  puts "What a nutritious meal!"
end
```

Now, for the second message, we could do something similar:

```rb
def meal_choice(veg1, veg2, protein = 'tofu')
  puts "What a nutritious meal!"
  puts "A plate of #{protein} with #{veg1} and #{veg2}."
end
```

With this, we've output all the messages and solved the first test in this lab. There
is still something else needed, though - remember that `puts` statements return `nil`:

```sh
2.6.1 :003 > puts Hello!
Hello!
 => nil
```

Similarly, if we run the current version of `meal_choice`, we will get the following:

```sh
2.6.1 :001 > meal_choice('carrots', 'string beans', 'chicken')
What a nutritious meal!
A plate of chicken with carrots and string beans.
 => nil
```

Instead of ending the method with a `puts`, we will need to add an additional
line specifying what to return. One possible  solution:

```rb
def meal_choice(veg1, veg2, protein = 'tofu')
  puts "What a nutritious meal!"
  puts "A plate of #{protein} with #{veg1} and #{veg2}."
  "A plate of #{protein} with #{veg1} and #{veg2}."
end
```

This works, but this code is a bit repetitive. We are creating our custom
message twice. Instead, we might consider assigning the message to a variable,
outputting the variable, then returning it:

```rb
def meal_choice(veg1, veg2, protein = 'tofu')
  puts "What a nutritious meal!"
  meal = "A plate of #{protein} with #{veg1} and #{veg2}."
  puts meal
  meal
end
```

Ruby implicitly returns the value of the final expression, in this case, `meal`.
We _can_ include an explicit `return`:

```rb
def meal_choice(veg1, veg2, protein = 'tofu')
  puts "What a nutritious meal!"
  meal = "A plate of #{protein} with #{veg1} and #{veg2}."
  puts meal
  return meal
end
```

But it is not necessary here.

## Conclusion

You're all set! You've successfully written a series of Ruby methods utilizing
all of the various Ruby basics we've discuss thus far. Now, we'll teach you
about scope, and how information can be passed around to different methods.
