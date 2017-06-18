# SALT THE EARTH

I hate getting new workstations. It always takes me several
hours/weeks to get everything I need installed. This package installs
most of the tools I use on a Ubuntu machine using SaltStack. Hopefully
one day I will have time to make this work on other *nix systems
besides Ubuntu.

Currently, this is not anywhere close to being complete or optimal,
because I am using this project to learn SaltStack.

## Getting Started

Currently, this isn't very mature, but the process for getting this
working is as follows:

- Edit salt/vars.jinja to taste. This is just setting variables True or
  False.

- Run bootstrap.sh as root:

  $ sudo ./bootstrap.sh

- Wait for everything to install.

- That's it!