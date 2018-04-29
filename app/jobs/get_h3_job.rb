require 'rubygems'
require 'nokogiri'
require 'open-uri'

class GetH3Job < ApplicationJob
  queue_as :default

  def perform(*args)

    data = Nokogiri::HTML(open(args[0].url))
    length = data.css('H3').length
  
    # in this loop using lenght-1, because the index starts at zero 
    for i in 0..length-1 do
      UpdatePageJob.perform_later("h3",data.css('h3')[i].text, args[0].id)
    end
 
  end
end
