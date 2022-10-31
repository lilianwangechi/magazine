
class Author

  #A name **cannot** be changed after it is initialized.
  attr_reader :name
   @@all=[]

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

#Returns an array of Article instances the author has written
def articles
  Article.all.select do |article| 
    article.author == name
  end
end


  #Returns a **unique** array of Magazine instances for which the author has contributed to
  def magazines
    magazines = articles.map do |author|
      author.magazine
    end
    magazines.uniq
  end
  
  
  #Given a magazine (as Magazine instance) and a title (as a string), creates a new Article instance and associates it with that author and that magazine.
  def add_article(magazine,title)
    Article.new(magazine,self,title)
  end

  
  #Returns a **unique** array of strings with the categories of the magazines the author has contributed to
  def topic_areas
    topics = magazines map do |magazine|
      magazine.category
    end
    topics.uniq
  end

 
end
