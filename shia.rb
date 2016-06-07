# This simple bot responds to every "Ping!" message with a "Pong!"

require 'discordrb'

bot = Discordrb::Bot.new token: 'MTg5NTY5MjI3MjQ4NzYyODgx.CjfFmg.4I3d2r6uMsePjlpScXyXDRDv-oM', application_id: 189567667382910976

bot.message(containing:/can'?t/i) do |event|
  event.respond 'JUST DO IT!'
end

bot.message(containing: "test", in: not!("#testing")) do |event|
  event.respond 'Take it to #testing'
end

bot.run
