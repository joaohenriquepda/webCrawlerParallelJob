class UpdatePageJob < ApplicationJob
  queue_as :default

  def perform(*args)
    
    puts args
    @page = Page.find(args[1])
    @page.h1.push(args[0])
    @page.save
 
  end
end
