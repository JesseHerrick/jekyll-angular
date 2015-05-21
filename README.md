# Jekyll-Angular

> A Jekyll plugin to make [AngularJS](https://angularjs.org/) play nice.

## Why?

Unfortunately, Jekyll and Angular don't usually work well together...

```html
<div ng-controller="foo">
  <p>{{ bar }}</p>
</div>
```

Gets turned into:

```html
<div ng-controller="foo">
  <p></p>
</div>
```

**Why?** Because Jekyll interperets `{{ brackets }}` as Liquid. How do we fix this? _This_ plugin.

## Getting Started

__Install the gem.__

```
$ gem install jekyll-angular
```

__Add the plugin to your config.__

```yaml
# _config.yml
gems:
  - jekyll-angular
```

__Use the plugin for cool Angular stuff.__

```html
<div ng-controller="foo">
  <p>{{ 'bar' | angular }}</p>
</div>
```

_Gets processed into..._

```html
<div ng-controller="foo">
  <p>{{ bar }}</p>
</div>
```

