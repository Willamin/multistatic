# multistatic

Provides a convenience factory method for instantiating multidimensional arrays.

## Installation

Add this to your application's `shard.yml`:

```yaml
dependencies:
  multistatic:
    github: willamin/multistatic
```

## Usage

```crystal
require "multistatic"

# eg. Instantiate a 2d StaticArray of Int32 with a size of 100x100 with default values of 0
StaticArray.dim(2, Int32, 100, 0)
```

## Contributing

1. Fork it ( https://github.com/willamin/multistatic/fork )
2. Create your feature branch (git checkout -b my-new-feature)
3. Commit your changes (git commit -am 'Add some feature')
4. Push to the branch (git push origin my-new-feature)
5. Create a new Pull Request

## Contributors

- [willamin](https://github.com/willamin) Will Lewis - creator, maintainer
