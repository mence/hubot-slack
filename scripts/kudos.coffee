# Description:
#   Give kudos to someone
#
# Dependencies:
#   "underscore": "1.3.3"
#
# Configuration:
#   None
#
# Commands:
#   hubot kudos to <user> - gives the specified user some kudos
#   hubot kudos leaderboard - displays the current kudos leaderboard
#
# Notes:
#   This was forked from https://github.com/influitive/hubot-kudos
#   Stated dependency was "underscore": "^1.7.0"
#
# Author:
#   daegren

# Keeper = require('./keeper')

# module.exports = (robot) ->
#   keeper = new Keeper(robot)

#   robot.hear /kudos to @?(.*)/i, (msg) ->
#     name = msg.match[1].trim()

#     users = robot.brain.usersForFuzzyName(name)
#     if users.length is 1
#       user = users[0]
#       keeper.add user.name
#       msg.send "#{user.name} is awesome!"
#     else if users.length is 0
#       msg.send "I don't know who #{name} is :("


#   robot.respond /kudos leaderboard/i, (msg) ->
#     msg.send keeper.leaderboard()

#   robot.hear /show brain/i, (msg) ->
#     console.log robot.brain

#   robot.hear /show scores/i, (msg) ->
#     robot.logger.info keeper.getScores()