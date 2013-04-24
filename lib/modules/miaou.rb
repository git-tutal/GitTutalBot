class Miaou
  include Cinch::Plugin

  match /miaou/,:method => :test1
  def test1(m)
    m.reply(["miaou","wouaf"].sample)
    #m.reply("miaoublob")
  end
end
