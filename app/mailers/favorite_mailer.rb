class FavoriteMailer < ApplicationMailer
  default from: "nilaypatel044@gmail.com"

  def new_comment(user, post, comment)

    headers["Message-ID"] = "<comments/#{comment.id}@http://localhost:3000/>"
    headers["In-Reply-To"] = "<post/#{post.id}@http://localhost:3000/>"
    headers["References"] = "<post/#{post.id}@http://localhost:3000/>"

    @user = user
    @post = post
    @comment = comment

    mail(to: user.email, subject: "New comment on #{post.title}")
  end


  def new_post(post)

    headers["Message-ID"] = "<posts/#{post.id}@http://localhost:3000/>"
    headers["In-Reply-To"] = "<post/#{post.id}@http://localhost:3000/>"
    headers["References"] = "<post/#{post.id}@http://localhost:3000/>"

    @post = post

    mail(to: post.user.email, subject: "You are following #{post.title}!")
  end

end
