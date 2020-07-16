<div align="center">

  # RoLog
  Mirror your output messages from Roblox Studio to your Terminal

</div>

## Alternative Tools
This was quickly whipped up because I had a hot idea. I'll likely never update this again, so I highly recommend using [this VSCode extension](https://marketplace.visualstudio.com/items?itemName=Corecii.roblox-output-sync) by Corecii.

## Requirements

- [NodeJS](https://nodejs.org/)
- [Roblox Studio](https://www.roblox.com/create)

## Installation

Setup the GitHub Registry with NPM by following this guide: [Link](https://docs.github.com/en/packages/using-github-packages-with-your-projects-ecosystem/configuring-npm-for-use-with-github-packages)

Once completed, run:

```sh
npm install -g @ayuka/rolog
```

And finally, install the Roblox Studio plugin: [Link](https://www.roblox.com/library/3134344866/RoLog)

## Usage

Run `rolog` in your Terminal to start the server. To stop it, either close it or terminate it by pressing `CTRL+C`

To connect Roblox Studio to your Terminal, in the `Plugins` tab, click `RoLog` to toggle it on. Click again to turn it off *(this does not stop the server)*, or you can stop the server and wait for the plugin to reach an error and stop itself.

## Style Guide

This uses [ansi-markup](https://github.com/tcowley/ansi-markup) for styling output messages. You can view all the options for it [here](https://github.com/tcowley/ansi-markup#markup).

## Credits

- [express](https://github.com/expressjs/express)
- [ansi-markup](https://github.com/tcowley/ansi-markup)
