# Surface Heroicons

A collection of [Surface](https://surface-ui.org) Components for all SVG [Heroicons](https://heroicons.com)

## Installation

```elixir
def deps do
  [
    {:surface_heroicons, "~> 0.4.0"}
  ]
end
```

## Usage

using default classes
```html
<Heroicons.Solid.ArchiveIcon/>
```

specifying classes
```html
<Heroicons.Solid.ArchiveIcon class="h-10 w-10" />
```

## Regenerate icons

clone down the latest `src` folder from the [Heroicons](https://github.com/tailwindlabs/heroicons) github repo
```bash
svn export https://github.com/tailwindlabs/heroicons/trunk/optimized priv/heroicons/src --force;
mix heroicons.generate;
```

## Authors

![Rocket Insights](https://www.rocketinsights.com/images/rocket_partofdept_logo.svg)

[Jon Principe](https://github.com/jprincipe)

