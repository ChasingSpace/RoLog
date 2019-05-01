#!/usr/bin/env node
const express = require("express");
const ansi = require("ansi-markup");

const app = express();
app.use(express.json());

app.post("/message", (req, res) => {
  req.body.messages.forEach(message => {
    console.log(`${new Date().toLocaleTimeString()} - ${ansi(message)}`);
  });

  res.sendStatus(200).end();
});

app.listen(51129, () => console.log("\u001B[35mRoLog is now listening...\u001B[0m"));
