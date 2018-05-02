require 'rails_helper'
require 'nokogiri'


RSpec.describe GetH1Job, :type => :job do

  str = <<-HTML
    <h1>Test</h1>
    <div class="user">
      <div class="name">User Name</div>
    </div>
  HTML

  describe "#perform_later" do

    it "uploads a backup" do
      ActiveJob::Base.queue_adapter = :test
      GetH1Job.perform_later('backup')
      expect(GetH1Job).to have_been_enqueued
    end


    it "get H1.length" do
      ActiveJob::Base.queue_adapter = :test
      GetH1Job.perform_later('backup')
      doc = Nokogiri::HTML(str)
      expect(doc.css('h1').length).to eq(1)
     
    end


  end

  

end