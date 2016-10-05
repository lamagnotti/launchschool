# Minitest Notes

***

- Minitest is the default testing library that comes with Ruby (many ppl use RSpec)
- RSpec is a Domain Specific Language (DSL)
- Minitest reads just like normal Ruby code

***

### Vocab

**Test Suite** - the entire set of tests that accompanies your program or app. Essentially **all of the tests** for a partiuclar project

**Test** - describes a situation of context in which tests are run
  - describe why you're testing (i.e. to ensure users can enter the correct password)

**Assertion** - actual verification step to confirm that the data returned by your program or app is what you expected. (You can make one or more assertions in a test)


***

### Example Test Run Breakdown

```
require 'minitest/autorun'
# This loads all the necessary files from the `minitest` gem.

require_relative 'car'
# Here we require the file we're testing, in this case `car.rb`

class CarTest < MiniTest::Test
# This is where we create our test class
# This class must subclass `MiniTest::Test` - this will allow our test class to inherit all the necessary methods for writing tests

  def test_wheels
  # Create an instance method that starts with `test_`
  # By naming methods with the test prefix, MT knows these methods are indiv. tests that need to be run

    car = Car.new
    assert_equal(4, car.wheels)
    # takes 2 params, the first is the expected value, the second is the test or actual value
    # if there's a discrepancy, `assert_equal` will save the error and MT will report that error to you at the end of the run

  end
end
```

- If you get a `.`, it means the test was run and nothing went wrong.
- If you skip a test, using the `skip` keyword, it'll say `S`, or `F` for failure

***

### Additional Notes

- Create a test file by subclassing `MiniTest::Test`
- Create a test by creating an instance method starting with `test_`
- Create assertions with `assert_equal` and pass the expected value and the actual value
- Colorize MT output with `minitest-reporters`
- Skip tests with `skip`
- Minitest can be used in 2 styles
  - assertion style
  - expectation style
