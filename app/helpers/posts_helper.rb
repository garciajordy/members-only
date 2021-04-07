module PostsHelper
    def user_display(post)
     if user_signed_in?
    @user = User.find(post.user_id)
    return @user.name
    end
    end
end
