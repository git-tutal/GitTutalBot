#!/usr/bin/ruby

require 'cinch'
require 'active_support/inflector'
require_relative "../lib/module.rb"

modules = []

Dir.foreach('./lib/modules') do |mod| 
  if (mod =~ /.rb$/)
    load "./lib/modules/#{mod}" 
    p mod.gsub('.rb','')
    modules << mod.gsub('.rb','').camelize.constantize
  end
end

bot = Cinch::Bot.new do
  configure do |c|

    c.server = "irc.iiens.net"
    c.channels = ["#git-tutal"]
    c.nick   = "IMASLAVE"
    c.plugins.plugins = modules 
    
  end
  
end

bot.start

modules.each do |mod|

  user_list.detect{|user| user.user = "GitMaster"}.send("!#{mod.downcase}")

end
