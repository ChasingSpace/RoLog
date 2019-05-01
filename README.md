<div align="center">

  # RoLog
  [![NPM](https://img.shields.io/npm/dt/rolog-cli.svg?style=flat-square)](https://www.npmjs.com/package/rolog-cli)

  Mirror your output messages from Roblox Studio to your Terminal

</div>

## Prerequisites

NPM is needed for this. You can install it by downloading NodeJS which is packaged with it. https://nodejs.org/

## Installation

Install the CLI for RoLog through NPM.

```sh
npm install -g rolog-cli
```

Install the Roblox Studio plugin.

https://www.roblox.com/library/3134344866/RoLog

## Usage

First, you'll need to start the server. Run `rolog` to do this.

You can stop the server, by either closing the Terminal or pressing Ctrl+C.

Then, in Roblox Studio, open a place and on the "Plugins" tab, click "RoLog"

Now, any output messages will now be mirrored to the Terminal running `rolog`

## Styling

This uses [ansi-markup](https://github.com/tcowley/ansi-markup) for styling output messages. You can view all the options for it [here](https://github.com/tcowley/ansi-markup#markup).

## Credits

- [express](https://github.com/expressjs/express)
- [ansi-markup](https://github.com/tcowley/ansi-markup)
