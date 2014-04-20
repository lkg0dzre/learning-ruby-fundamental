require_relative "blog"

post = Blog::Post.new author: "José Mota",
                      title: "A title",
                      body: "A body"
post.extend Tweetable
post.tweet
