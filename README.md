# Durklas0x Tap

## How do I install these casks?

`brew install --cask durklas0x/tap/<cask>`

Or `brew tap durklas0x/tap` and then `brew install --cask <cask>`.

Or, in a `brew bundle` `Brewfile`:

```ruby
tap "durklas0x/tap"
cask "durklas0x/tap/<cask>"
```

## Caprine

Install the [bankjaneo/caprine](https://github.com/bankjaneo/caprine) fork on macOS:

```sh
brew install --cask durklas0x/tap/caprine
```

Use the fully qualified cask name to select this tap's fork. Apple Silicon requires
macOS 12 or newer; Intel requires macOS 10.15 or newer.

If you already installed Caprine from another tap, uninstall that cask first:

```sh
brew uninstall --cask caprine
brew install --cask durklas0x/tap/caprine
```

The app supports automatic updates. To update through Homebrew instead:

```sh
brew update
brew upgrade --cask --greedy durklas0x/tap/caprine
```

The daily `brew bump` workflow checks this fork's latest stable GitHub release and
opens a pull request when a new cask version is available. Merge that pull request
to publish the update in this tap.

## Robin

[Robin](https://github.com/durklas0x/robin) is Finder’s little sidekick: an editable floating path bar and quick folder actions.

```sh
brew install --cask durklas0x/tap/robin
```

Requires macOS 14 or newer on Apple Silicon or Intel. See Robin’s [first-launch instructions](https://github.com/durklas0x/robin#first-launch) for macOS approval and enabling its Finder extension.

## Documentation

`brew help`, `man brew` or check [Homebrew's documentation](https://docs.brew.sh).
