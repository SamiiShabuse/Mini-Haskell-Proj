# Setup

```bash

stack new my-haskell-app simple
```

`my-haskell-app` is your project name — you can name it whatever you want.

`simple` uses a basic project template (no tests, just Main.hs).

```bash

stack build
```

- This downloads GHC (if not already installed), compiles the project, and ensures everything works

```bash

stack run
```

- This runs the script 