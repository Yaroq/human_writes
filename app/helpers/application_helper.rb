module ApplicationHelper

    #returns the full title on a per page basis, depending on the definition of
    #the title
    def full_title(page_title)
        base_title = "Human Writes"
        if page_title.empty?
            base_title
        else
            "#{base_title} | #{page_title}"
        end
    end

end
