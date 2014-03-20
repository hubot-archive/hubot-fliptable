# Description:
#   Make hubot flip a table
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   hubot flip - Hubot flips a table
#   hubot rage - Hubot rages a table
#   hubot set - Hubot sets a table
#
# Author:
#   jjasghar

module.exports = (robot) ->

  robot.respond /flip\b/i, (msg) ->
    msg.send "(╯°□°）╯︵ ┻━┻"

  robot.respond /rage\b/i, (msg) ->
    msg.send "(ﾉಥ益ಥ）ﾉ ┻━┻"

  robot.respond /set\b/i, (msg) ->
    msg.send "┬─┬ ノ( ゜-゜ノ)"
