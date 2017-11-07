class PostsController < ApplicationController
  def index
     @posts = Post.all
     @posts.each_with_index do |post, index|
      if index % 5 == 0
        post.title = "SPAM"
      end
    end
    # (0..@posts.size).step(5) { |5| @posts[5] @posts.title = "SPAM" }
  end

  def show
  end

  def new
  end

  def edit
  end
end
