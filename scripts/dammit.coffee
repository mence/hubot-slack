# Description:
#   People keep insulting Bender. It's time to let him reply.
#
# Commands:
#   Dammit bender - Insult Bender
#
# Notes:
#   There are some variations on damn, dammit, etc.

module.exports = (robot) ->

  benderInsults = [
    'Bite my shiny metal ass.',
    'Game\'s over, losers! I have all the money. Compare your lives to mine and then kill yourselves.',
    'This is the worst kind of discrimination. The kind against me!',
    'Yeah. Well. I\'m gonna go build my own theme park with blackjack and hookers. In fact, forget the park.',
    'I came here with a simple dream. A dream of killing all humans. Maybe you.',
    'I love you too, meatbag.',
    'Quit squawking, fleshwad.',
    'Kindly shut your noise hole.'
  ]

  robot.hear /(damn|Damn|dammit|Dammit|damn it|Damn it|damn you|Damn you) (bender|Bender)/i, (msg) ->
    msg.send msg.random benderInsults

