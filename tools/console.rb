require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console



adrian = Follower.new("Adrian", 26, "Never tell me the odds")
brian = Follower.new("Brian", 27, "Never take anything to serious")
ahmed = Follower.new("Ahmed", 34, "Beans")
damon = Follower.new("Damon", 56, "Video games")

cult1 = Cult.new("Mean Cult", "Florida", 1990, "We love bein mean")
cult2 = Cult.new("Nice Cult", "Colorado", 1990, "We love bein nice")
cult3 = Cult.new("Sexy Cult", "Colorado", 2014, "We love bein sexy")

Bloodoath.new(cult1, adrian)
Bloodoath.new(cult2, brian)
Bloodoath.new(cult1, ahmed)
Bloodoath.new(cult2, adrian)










binding.pry

puts "Mwahahaha!" # just in case pry is buggy and exits
