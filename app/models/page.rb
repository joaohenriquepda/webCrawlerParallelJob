class Page < ApplicationRecord
    after_update :reload_page, :only => :update

    def reload_page
       
    end
end
