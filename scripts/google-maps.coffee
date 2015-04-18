# Description:
#   Forked from https://github.com/n0bisuke/hubot-googlemaps
# 	Original Description: Messing around with the google map API.
#
# Commands:
#   hubot gmap 'location'  - Return google map static image.
#	hubot where is 'location' - Return google map static image.

gm = require("googlemaps")

module.exports = (robot) ->
  robot.respond /(gmap|where is|google map me) (.+)$/i, (msg) ->
    markers = [location: msg.match[1]]
    output = gm.staticMap(msg.match[1], 14, "1000x800", false, false, "roadmap", markers)
    msg.send output
    return

  return