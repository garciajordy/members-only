module ApplicationHelper
    def check_user_sign_in
        out = ""
        if user_signed_in?
            out << link_to('Create Post', new_post_path, :class => "nav-link")
       end
      out.html_safe
    end

    def check_user_sign_in2
        out = ""
        if user_signed_in?
            out << link_to('Edit profile', edit_user_registration_path, :class => "nav-link")
       end
      out.html_safe
    end

    def check_user_sign_in3
        out = ""
        if user_signed_in?
            out << link_to("Logout", destroy_user_session_path, method: :delete, :class => "nav-link")
       end
      out.html_safe
    end

    def check_user_sign_out
        out = ""
        if !user_signed_in?
            out << link_to("Sign up", new_user_registration_path, :class => "nav-link")
       end
      out.html_safe
    end

    def check_user_sign_out2
        out = ""
        if !user_signed_in?
            out << link_to("Login", new_user_session_path, :class => "nav-link")
       end
      out.html_safe
    end

end
