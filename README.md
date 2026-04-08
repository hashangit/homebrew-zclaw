# hashangit/zclaw Homebrew Tap

Install [ZClaw](https://github.com/hashangit/zclaw) via Homebrew.

## Install

```bash
brew tap hashangit/zclaw
brew install zclaw
```

Or without tapping first:

```bash
brew install hashangit/zclaw/zclaw
```

## Updating

When a new version is published:

1. Download the tarball and compute the SHA256:
   ```bash
   curl -sL https://registry.npmjs.org/zclaw-core/-/zclaw-core-<VERSION>.tgz | shasum -a 256
   ```
2. Update `Formula/zclaw.rb` with the new URL and SHA256.
3. Commit and push.
