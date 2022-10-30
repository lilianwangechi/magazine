require 'pry'
class Magazine

  #The name and category of the magazine **can be** changed after being initialized.
  attr_accessor :name, :category

 @all = []


 #A magazine is initialized with a name as a string and a category as a string
  def initialize(name, category)
    #Returns the name of this magazine
    @name = name
    #Returns the category of this magazine
    @category = category
  end

  #Returns the name of this magazine
  def magazine_name
    @name
  end

 #Returns the category of this magazine
  def magazine_category
    @category
  end

  #Returns an array of all Magazine instances
 def self.all
  @@all
 end

 #Returns the magazine for that given article
  def article_magazine
    Article.all.select do |article_magazine|
      article_magazine.article == self
    end
  end
    #Returns an array of Author instances who have written for this magazine
  def magazine_contributors
    authors = article_magazine.map do |article|
      article.magazine
    end
    authors
  end
  binding.pry
end
