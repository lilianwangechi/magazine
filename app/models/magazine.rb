
class Magazine

  #The name and category of the magazine **can be** changed after being initialized.
  attr_accessor :name, :category

 @@all = []


 #A magazine is initialized with a name as a string and a category as a string
  def initialize(name, category)
    #Returns the name of this magazine
    @name = name
    #Returns the category of this magazine
    @category = category
    @@all << self

  end
   def self.all
    @@all
   end


  #Returns the name of this magazine
  def name
    @name
  end

 #Returns the category of this magazine
  def category
    @category
  end

  #Returns an array of all Magazine instances
 def self.all
  @@all
 end


def articles
  Article.all.select do |article| 
    article.magazine == name
  end
end

  #Returns an array of Author instances who have written for this magazine
  def contributors
    authors = articles.map do |author|
      author.author
    end
   authors
  end

 
#Given a string of magazine's name, this method returns the first magazine object that matches
def self.find_by_name(name)
Magazine.all.find{|magazine|
magazine.name == name}
end

#Returns an array strings of the titles of all articles written for that magazine  
def articles_titles
  titles=articles.map do |title| 
    title.title
  end
  titles
end


#Returns an array of authors who have written more than 2 articles for the magazine
def contributing_authors
  
end
end