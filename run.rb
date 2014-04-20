require_relative "blog"

post = Blog::Post.new author: "José Mota",
                      title: "A title",
                      body: "A body",
                      comments: Blog::Comment.new(user: "Jeffrey Way",
                                                  body: "a Comment")

p post.inspect
