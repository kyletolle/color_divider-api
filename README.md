# ColorDivider-Api

Provides an API for the [ColorDivider](https://github.com/kyletolle/color_divider) functionality.

## Development

### Install

```
git clone https://github.com/kyletolle/color_divider-api.git
cd color_divider-api
bundle install
```

### Run Server

```
bundle exec foreman start
```

### Usage

#### URL

```
curl http://localhost:3000/middle_color\?start_color\=%23000000\&end_color\=%23FFFFFF
```

#### Response

```
#808080
```

### Specs

The default Rake task is to run the specs.

```
rake
```

## License

MIT

