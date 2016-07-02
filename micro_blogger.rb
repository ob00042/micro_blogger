require "jumpstart_auth"

class MicroBlogger
  attr_reader :client

  def initialize
  	puts "Initializing ..."
  	@client = JumpstartAuth.twitter
  end

  def tweet(message)

  	if message.length <= 140
  	  @client.update(message)
  	else
  	  puts "The message is over 140 characters long. Will not tweet!"
  	end



  end


end

blogger = MicroBlogger.new
blogger.tweet("Less than 140")
blogger.tweet("Exactly 140 characters. This is kinda stupid having to write all of it. Halfway through. Let's go! I got this. I ate late today, and I willa")
blogger.tweet("More than 140 characters. I am not sure how long this should be. Kinda bored to type actual things, so... jachpodjcskdbcsodich[doockkjceiycgwpcokwclkndckhbiuchepock[ckelfjvnefivbefpvjfghjkjhghjk")
