# Bundle Benchmark

:gem: Because loading gems can take longer than you think

```sh
bundle_benchmark
............................................................[DONE]

Gem                            Time(sec)     Pct %
--------------------------------------------------
rails                             2.4161     26.9%
mongoid                           0.9279     10.3%
fog                               0.7707      8.6%
newrelic_rpm                      0.5839      6.5%
geocoder                          0.3578      4.0%
delayed_job                       0.3162      3.5%
bitly                             0.2703      3.0%
sass                              0.2651      3.0%
tire                              0.2592      2.9%
--------------------------------------------------
Total                             4.8583    100.0%
```

Forked from [this awesome gist](https://gist.github.com/panthomakos/2588879) by [Pan Thomakos](https://github.com/panthomakos)

## Installation

```sh
gem install bundle_benchmark
```

No need to add it to your Gemfile.

## Use It

In your project directory, run:

```sh
bundle_benchmark
```

To benchmark a specific Gemfile, run:

```sh
BUNDLE_GEMFILE=~/Projects/project_n/Gemfile bundle_benchmark
```

To only require certain groups - like Rails does - do

```sh
# default rails development groups
BUNDLE_GROUPS=default,development,assets bundle_benchmark
```

## Now What?

Read this article

https://iain.nl/getting-the-most-out-of-bundler-groups

## The Results

I was able to reduce gem load time from 12.1 seconds to 6.7 seconds - over 5 seconds!

Here’s what I did:

1. Added :console group like the article above suggested

1. Commented out `ruby-prof`, `oink`, and `debugger` when not in use

1. Moved `newrelic_rpm` and `turbo-sprockets-rails3` to :staging, :production groups

1. Removed unused gems

## Bonus

```sh
bin/rails console # or server, etc
```

is faster than

```sh
bundle exec rails console
```

Try it yourself
