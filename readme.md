Note and code for  [CLRS](https://en.wikipedia.org/wiki/Introduction_to_Algorithms)
==================================================================================

The note will be written using [vimwiki](https://github.com/vimwiki/vimwiki)
syntax, cus it's nice and integrate well with my daily journal. Other note will
be written in markdown to be well rendered by github.

The code, will be implemented in Python, Ruby, Javascript (nodejs) and Golang. I
hope that I can accomplish this task

Tips
----

Use [nodemon](https://nodemon.io/) to auto execute code on save.

Use [direnv](https://direnv.net/) to load the `.envrc` file, which provide some
utility functions like:

- `watch-script`: start nodemon with the config as git project root, and watch
  the given script for change.

This requires a little bit setup for direnv as the tool original doesn't allow
exporting new function. We will have to put following line into `$HOME/.direnvrc`
(see [this](https://github.com/direnv/direnv/issues/73#issuecomment-392342423))
```sh
#!/bin/sh

export_function() {
  local name=$1
  local alias_dir=$PWD/.direnv/aliases
  mkdir -p "$alias_dir"
  PATH_add "$alias_dir"
  local target="$alias_dir/$name"
  if declare -f "$name" >/dev/null; then
    echo "#!/usr/bin/env bash" > "$target"
    declare -f "$name" >> "$target" 2>/dev/null
    echo "$name \$*" >> "$target"
    chmod +x "$target"
  fi
}

```


