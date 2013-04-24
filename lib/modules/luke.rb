class Luke
	include Cinch::Plugin
	
	match /luke/,:method => :say
	def say(m)
		m.reply("father")
	end
end
