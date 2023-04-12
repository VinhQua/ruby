class Blog
    @@all_blogs=[]
    @@total_blog = 0
    def self.all
        @@all_blogs
    end
    def self.total
        @@total_blog
    end
    def self.add(blog)
        @@all_blogs << blog
        @@total_blog += 1
    end
    def self.publish
        @@all_blogs.each_with_index do |blog,index|
            puts "#{index +1}. Title: #{blog.title}"
            puts "content: #{blog.content}"
            puts "publish date: #{blog.publish_date}"
            puts "author: #{blog.author}"
        end
    end   
    
end
class EachBlog < Blog
   attr_accessor :title, :content, :publish_date, :author
    def self.create
        blog = new
        blog.title= gets.chomp
        blog.content= gets.chomp
        blog.publish_date= gets.chomp
        blog.author= gets.chomp
        Blog.add(blog)
        puts "Do you want to create a new blog? (y/n)"
        create if gets.chomp.downcase == "y"
    end
    

end
EachBlog.create
puts Blog.total
puts Blog.all.inspect
Blog.publish