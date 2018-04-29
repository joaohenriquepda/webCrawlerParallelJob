require 'rubygems'
require 'nokogiri'
require 'open-uri'

class GetH1Job < ApplicationJob
  queue_as :default

  def perform(*args)
    # puts args[0].url

    data = Nokogiri::HTML(open(args[0].url))
    length = data.css('h1').length
  
    # in this loop using lenght-1, because the index starts at zero 
    for i in 0..length-1 do
      UpdatePageJob.perform_later(data.css('h1')[i].text, args[0].id)
    end

  end
end
