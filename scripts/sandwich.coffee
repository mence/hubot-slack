# Description:
#   XKCD with a mild twist
#
# Commands:
#   hubot make me a sandwich - No
#   hubot sudo make me sandwich - User is not in the sudoers file

deniedMsg = "What? Make it yourself."
sudoMsg   = "Okay. http://www.kingarthurflour.com/shop-img/1272652133074.jpg"

module.exports = (robot) ->
  robot.respond /(sudo )?make me a sandwich/i, (msg) ->
    hasSudo = msg.match[1] ? false

    if hasSudo
      msg.send sudoMsg
    else
      msg.reply deniedMsg