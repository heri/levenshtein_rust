# LevenshteinRust

Ths calculates the [Levenshtein distance](https://en.m.wikipedia.org/wiki/Levenshtein_distance) between two strings, in Rust. It's 10x to 500x faster to standard Ruby implementations.

```
irb(main) LevenshteinRust.distance("Tim Brady", "Tim Brody") 
=> "1"
```

## Background

Read https://studiozenkai.com/post/levenshtein-rust/ for context

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'levenshtein_rust'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install levenshtein_rust

## Compiling native

This gem requires compiling if you develop and then use on a different OS, for instance develop on MacOs but use it on an Ubuntu server. The fool-proof way to compile is to 

    $ cd
    $ git clone https://github.com/heri/levenshtein_rust.git
    $ cd levenshtein_rust

Assuming you have rust installed :

    $ rake build

This will create `native.*` files in `lib/levenshtein_rust` that work on your OS. Copy these native files to where the `levenshtein_rust` gem is installed. *Example (customize depending on your local ruby/bundle install)*: 

    $ cp lib/levenshtein_rust/native.*  /home/user/.rbenv/versions/2.5.0/lib/ruby/gems/2.5.0/bundler/gems/levenshtein_rust

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/heri/levenshtein_rust. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the LevenshteinRust project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/levenshtein_rust/blob/master/CODE_OF_CONDUCT.md).
