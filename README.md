# hubot-hello-xxx

A Hubot script that responds XXX

See [`src/hello-xxx.coffee`](src/hello-xxx.coffee) for full documentation.

## Installation

In hubot project repo, run:

`npm install hubot-hello-xxx --save`

Then add **hubot-hello-xxx** to your `external-scripts.json`:

```json
[
  "hubot-hello-xxx"
]
```

## Sample Interaction

```
$ HUBOT_HELLO_XXX_MESSAGES='["あびゃー","チョリーッス"]' HUBOT_HELLO_XXX_MESSAGE='うるせえ' HUBOT_SHELL_USER_NAME='bouzuya' PATH="./node_modules/hubot/node_modules/.bin:$PATH" $(npm bin)/hubot -a shell -n hubot -r src
bouzuya> hubot hello
  hubot> うるせえ, bouzuya!
bouzuya> hubot hello!
  hubot> あびゃー
```
