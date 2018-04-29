require 'rubygems'
require 'nokogiri'
require 'open-uri'

class GetH2Job < ApplicationJob
  queue_as :default

  def perform(*args)

    data = Nokogiri::HTML(open(args[0].url))
    length = data.css('h2').length
  
    # in this loop using lenght-1, because the index starts at zero 
    for i in 0..length-1 do
      #Call job that expects the parameters like
      #  updatePageJob( tag HTML, text inside the tag, id)  
      UpdatePageJob.perform_later("h2",data.css('h2')[i].text, args[0].id)
    end
 

  end
end
