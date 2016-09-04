`git-ci-mtime` is a git plugin to commit a `file` using its `mtime` as auth date.

Install
--------

### With `make`

```sh
; make
```

Files will be installed to `/usr/local/bin`.
If you want to install other place, edit `config.mk` before running `make`.

Makefile is compatible with both GNU make and BSD make.

### With basher

```sh
; basher install weakish/git-ci-mtime
```

### Manually

Copy `git-ci-mtime.sh`  to `$PATH/git-ci-mtime`.


Usage
------

```sh
git ci-mtime FILE_TO_COMMIT [--more-git-options]
```

Equivalent git commands:

```sh
git add FILE_TO_COMMIT
git commit --date 'mtime of FILE' FILE
```

You can pass more git options **after** `FILE`:

```sh
git ci-mtime FILE --gpg-sign -m 'accept any options git commit accepts'
```

You can commit multiple files:

- The auth date will be the `mtime` of the first file.
- Same as above, other files must be passed **after** `FILE`.
- `git ci-mtime * -m 'glob'` should work since `$SHELL` probably will expand
  `*` for you (unless you are running your interactive `$SHELL` with `set -f`
  or `$SHELL -o noglob`).

License
--------

0BSD
