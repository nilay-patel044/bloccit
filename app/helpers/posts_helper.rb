module PostsHelper
  def user_can_edit_post?(post)
    current_user && (current_user == post.user || current_user.admin?)
  end
  def user_can_delete_post?(post)
    current_user && (current_user == post.user || current_user.admin?)
  end

  def user_has_posts_or_comments?(user)
    user.posts.count > 0 || user.comments.count > 0
  end

end
