class UpdatePageJob < ApplicationJob
  queue_as :default

  def perform(*args)
    
    
    @page = Page.find(args[2])

    case args[0]
    when "h1"
      @page.h1.push(args[1])
    when "h2"
      @page.h2.push(args[1])
    when "h3"
      @page.h3.push(args[1])
    when 'links'
      @page.links.push(args[1])  
    end

    @page.save
 
  end
end
