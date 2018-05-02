require 'rubygems'
require 'nokogiri'
require 'open-uri'

class GetLinksJob < ApplicationJob
  queue_as :default

  def perform(*args)
    
    data = Nokogiri::HTML(open(args[0].url).read)
    urls = data.search('a','img').map{ |tag|

      case tag.name.downcase
      when 'a'
        tag['href']
      when  
        tag['src']
      end   
    }

    for i in 0..urls.length-1 do
      puts urls[i]
      UpdatePageJob.perform_later("links",urls[i], args[0].id)
    end


  end
end
