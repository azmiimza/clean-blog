module ApplicationHelper

    def full_title(page_title = '')
        base_title = "Clean Blog"

        if page_title.empty?
            base_title
        else
            page_title
        end
    end

    def check_user(user)
        if current_user.present?
            current_user.admin? || current_user?(user)
        else
            false
        end
    end

end
