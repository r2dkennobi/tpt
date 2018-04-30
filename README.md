# tpt (Transporter)

![Build Status](https://travis-ci.org/r2dkennobi/tpt.svg?branch=master)

A simple bash function that allows users to jump to a project folder on their
system. Similar to how `roscd` works in ROS.

# How to use

```
$ tpt my-project

# Override the search path. Variable can also be exported.
$ export PROJECT_DIR="<some-dir1> <some-dir2> <some-dir3>..."
$ tpt my-project

# To update the project list cache (The cache will auto-generate the first time
# the command is executed.
$ tpt --update-cache

# For more info
$ tpt --help
```

# Dependency

- `bash`
- `find`

# Install

Clone the repo and source the `tpt` script in your `.bash_profile`
(or wherever else depending on how your system is configured)

(Sourcing allows `tpt` to auto-complete package names)

# Configure

By default, `tpt` will use your home directory (`$HOME`) as the root of your
search path and attempt to find all projects under that directory. The root of
the projects is defined by the environment variable `$PROJECT_DIR` (at least
for now.)

The script identifies packages based on whether a specific file is present
in the directory. Currently supported files are listed below:

- `.mjornir.yaml`
- `package.xml`
- `.travis.yml`
- `.gitlab-ci.yml`
- `WORKSPACE`

# Planned features

- Faster alternative to `find`
- Prevent duplicate entries to show up on the autocomplete
- More options
  - `--this`: Search from current directory and below
  - `--project`: Specify which project to find the packages from
  - `--identifier`: Override the package identifier
- Multiple search paths
