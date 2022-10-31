# Please copy/paste all three classes into this file to submit your solution!

class Article
  #An article **cannot** change its author, magazine, or title after it is has been initialized. 
   #Returns the author and magazine for that given article
  attr_reader :title, :magazine
  
  @@all = []
  
  #An article is initialized with an author as an Author object, a magazine as a Magazine 
  def  initialize(author,magazine,title)
    @author = author
    @magazine = magazine
    @title = title 
    @@all << self
  end
  
     #Returns the title for that given article
    def title
      @title
    end
  
       #Returns the author for that given article
    def author
     @author
      end
  
    #Returns the magazine for that given article
         def magazine
          @magazine
        end
    # Returns an array of all Article instances
  def self.all
    @@all
  end
  end

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
    def all_magazines
      articles.map do |author|
        author.magazine
      end
    end
    
    def magazines
      all_magazines.uniq
    end
    
    #Given a magazine (as Magazine instance) and a title (as a string), creates a new Article instance and associates it with that author and that magazine.
    def add_article(magazine,title)
      Article.new(self,magazine,title)
    end
  
    
    #Returns a **unique** array of strings with the categories of the magazines the author has contributed to
   
    def topic_areas
    magazines.collect do |magazine|
        magazine.category 
      end
    end
  end
  


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