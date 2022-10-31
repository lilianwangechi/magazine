require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


###  WRITE YOUR TEST CODE HERE ###
milka=Author.new("milka")
tina=Author.new("tina")
bony=Author.new("bony")

vogue=Magazine.new("vogue","fashion")
cnn=Magazine.new("cnn","news")
game=Magazine.new("game","video games")
space=Magazine.new("space","space focus")

article1=Article.new("milka","vogue","new trends")
article2 =Article.new("tina","cnn","breaking")
article3=Article.new("bony","game","God of war latest")
article4=Article.new("tina","space","man goes to moon")
article5=Article.new("bony","vogue","mens wear")
article6=Article.new("tina","vogue","womens wear")
article7=Article.new("tina","cnn","around the world")






### DO NOT REMOVE THIS
binding.pry

0
