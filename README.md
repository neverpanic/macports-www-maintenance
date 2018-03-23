# MacPorts Maintenance Placeholder Website

This repository contains a simple [Bootstrap][bootstrap]-based
webpage with a placeholder message to be used during maintenance, e.g. of Trac.

It is loosely based on the [Cover][cover] example from Bootstrap.

## Building

To build this, you need to have the `sassc` port installed. Since the
repository contains a submodule for bootstrap, you must also have run `git
submodule init` and `git submodule update` at least once.

Once these prerequisites are fulfilled, just type `make` to build. The
resulting webpage will be generated in the `dst/` folder and will be ready for
deployment.

[bootstrap]: https://getbootstrap.com/
[cover]: https://getbootstrap.com/docs/4.0/examples/cover/
