# This simple bot responds to every "Ping!" message with a "Pong!"

require 'discordrb'

bot = Discordrb::Bot.new token: 'MTg5NTY5MjI3MjQ4NzYyODgx.CjfFmg.4I3d2r6uMsePjlpScXyXDRDv-oM', application_id: 189567667382910976

# Here we output the invite URL to the console so the bot account can be invited to the channel. This only has to be
# done once, afterwards, you can remove this part if you want
puts "This bot's invite URL is #{bot.invite_url}."
puts 'Click on it to invite it to your server.'

bot.message(with_text: 'Ping!') do |event|
  event.respond 'Pong!'
end

bot.run
