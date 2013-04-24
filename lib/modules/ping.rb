class Ping
  include Cinch::Plugin

    match /ping/,:method => :test1
    def test1(m)
      m.reply("pong!")
    end

end
