# encoding: utf-8
require_relative "tweetable"

module Blog

class Post
  attr_reader :author, :title, :body, :comments

  def initialize options
    @author  = options[:author]
    @title  = options[:title]
    @body   = options[:body]
    @comments = options[:comments] || []
  end

  def insert_comment *comments
    comments.each do |comment|
      @comments << comment
    end
  end

  def insert_random_comment
    @comments << Comment.new(user: "Jeffrey Way",
                             body: "a Comment")
  end
end

class Comment
  include Tweetable
  attr_reader :user, :body

  def initialize options
    @user = options[:user]
    @body = options[:body]
  end
end

end
