tvheadend-safe-restart 1.0.

Restart [Tvheadend](https://tvheadend.org/) unless it's recording.

http://ikn.org.uk/tvheadend-safe-restart

# License

Distributed under the terms of the 
[BSD 3-Clause license](https://opensource.org/licenses/BSD-3-Clause).

# Dependencies

- [Bash](https://www.gnu.org/software/bash/)
- [Jshon](http://kmkeen.com/jshon/)

# Installation

Run `make install`.  The usual `DESTDIR`, etc. arguments to `make` are
supported.

# Usage

Environment variables:
- `TVHEADEND_HOME` (default: `/home/hts`): the home directory for the user
  running the Tvheadend service.

Exits with code 1 if Tvheadend is currently recording, otherwise with the exit
code from the restart command.

Works only with [systemd](https://www.freedesktop.org/wiki/Software/systemd/)
(or a compatible service manager).
