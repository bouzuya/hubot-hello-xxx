# Description
#   A Hubot script that responds XXX
#
# Configuration:
#   HUBOT_HELLO_XXX_MESSAGE
#   HUBOT_HELLO_XXX_MESSAGES
#
# Commands:
#   hubot hello - respond XXX
#   hubot hello! - respond XXX
#
# Author:
#   bouzuya <m@bouzuya.net>

config =
  message: process.env.HUBOT_HELLO_XXX_MESSAGE
  messages: JSON.parse(process.env.HUBOT_HELLO_XXX_MESSAGES ? '[]')

module.exports = (robot) ->
  unless config.message?
    robot.logger.error 'process.env.HUBOT_HELLO_XXX_MESSAGE is not defined'
    return

  robot.respond /hello$/, (msg) ->
    msg.send "#{config.message}, #{msg.envelope.user.name}!"

  robot.respond /hello!$/, (msg) ->
    message = msg.random config.messages
    msg.send message if message?
