# This simple bot responds to every "Ping!" message with a "Pong!"

require 'discordrb'

bot = Discordrb::Bot.new token: 'BOT_TOKEN_HERE', application_id: 189567667382910976

bot.message(containing:/can'?t/i) do |event|
  event.respond 'JUST DO IT!'
end
=begin
bot.message(containing: "test", in: not!("#testing")) do |event|
  event.respond 'Take it to #testing'
end
=end
bot.run
