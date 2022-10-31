
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
