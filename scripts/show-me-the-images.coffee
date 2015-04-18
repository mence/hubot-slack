# Description:
#   Show me the images!
#
# Commands:
#   hubot show me the images - Hubot hasn't got time for that

deniedMsg = "http://replygif.net/i/422.gif"

module.exports = (robot) ->
  robot.respond /show me the imag(es|e)/i, (msg) ->
      msg.reply deniedMsg