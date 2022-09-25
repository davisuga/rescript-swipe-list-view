## How to use this template

- ⚠️ **Don't fork this repository.** Use the "Use this template" green GitHub
  button.
- Put your bindings in `src/RescriptSwipeListView` & rename accordingly or use
  `bsconfig.json` `"namespace"` field (more on this below),
- Update all occurences of

  - `rescript-swipe-list-view`
  - `https://github.com/rescript-react-native/__template__`
  - `__template__`
  - `react-native-swipe-list-view`
  - `https://github.com/jemise111/react-native-swipe-list-view`
  - `RescriptSwipeListView`. If you have more than a file exposed, you should
    consider using ReScript custom namespace by adjusting `bsconfig.json`
    and adding a `"namespace": "react-native-something"` (note that it will be
    converted to `RescriptSwipeListView`)

- Add your `react-native-swipe-list-view` (adjusted) in `peerDependencies`
  & `devDependencies` section
- Adjust the changelog (and/or clean it)
- Remove this part ⬆ & keep everything below ⬇

---

# `rescript-swipe-list-view`

[![Build Status](https://github.com/rescript-react-native/__template__/workflows/Build/badge.svg)](https://github.com/rescript-react-native/__template__/actions)
[![Version](https://img.shields.io/npm/v/rescript-swipe-list-view.svg)](https://www.npmjs.com/rescript-swipe-list-view)
[![ReScript Forum](https://img.shields.io/discourse/posts?color=e6484f&label=ReScript%20Forum&server=https%3A%2F%2Fforum.rescript-lang.org)](https://forum.rescript-lang.org/)

[ReScript](https://rescript-lang.org) bindings for
[`react-native-swipe-list-view`](https://github.com/jemise111/react-native-swipe-list-view).

Exposed as `RescriptSwipeListView` module.

`rescript-swipe-list-view` X.y.\* means it's compatible with
`react-native-swipe-list-view` X.y.\*

## Installation

When
[`react-native-swipe-list-view`](https://github.com/jemise111/react-native-swipe-list-view)
is properly installed & configured by following their installation instructions,
you can install the bindings:

```console
npm install rescript-swipe-list-view
# or
yarn add rescript-swipe-list-view
```

`rescript-swipe-list-view` should be added to `bs-dependencies` in your
`bsconfig.json`:

```diff
{
  //...
  "bs-dependencies": [
    "@rescript/react",
    "rescript-react-native",
    // ...
+    "rescript-swipe-list-view"
  ],
  //...
}
```

## Usage

### Types

#### `RescriptSwipeListView.t`

...

### Methods

#### `RescriptSwipeListView.method`

...

---

## Changelog

Check the [changelog](./CHANGELOG.md) for more informations about recent
releases.

---

## Contribute

Read the
[contribution guidelines](https://github.com/rescript-react-native/.github/blob/master/CONTRIBUTING.md)
before contributing.

## Code of Conduct

We want this community to be friendly and respectful to each other. Please read
[our full code of conduct](https://github.com/rescript-react-native/.github/blob/master/CODE_OF_CONDUCT.md)
so that you can understand what actions will and will not be tolerated.
