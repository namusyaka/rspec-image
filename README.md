# RSpec::Image

Provides some matchers for testing your image file.

## Installation

Add this line to your application's Gemfile:

    gem 'rspec-image'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install rspec-image

## Usage

### `be_identical_with`

```ruby
describe "thumbnail file" do
  subject { "/path/to/something.jpg" }
  it { should be_identical_with("/path/to/something.jpg") }
end
```

### `have_width`

```ruby
describe "thumbnail file" do
  subject { "/path/to/something.jpg" }
  it { should have_width(400) }
end
```

### `have_height`

```ruby
describe "thumbnail file" do
  subject { "/path/to/something.jpg" }
  it { should have_height(300) }
end
```

### `have_dimensions`

```ruby
describe "thumbnail file" do
  subject { "/path/to/something.jpg" }
  it { should have_dimensions(400, 300) }
end
```

## Contributing

1. Fork it ( https://github.com/namusyaka/rspec-image/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
