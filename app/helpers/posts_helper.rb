module PostsHelper
  def user_display(post)
    @user = User.find(post.user_id)

    @user.name if user_signed_in?
  end
end
