require 'rails_helper'

RSpec.describe UpdatePageJob, :type => :job do
  describe "#perform_later" do
   let(:page){ Page.create(url:"https://en.wikipedia.org/wiki/Microservices")  }

    it "uploads a backup" do
      ActiveJob::Base.queue_adapter = :test
      UpdatePageJob.perform_later(page)
      expect(UpdatePageJob).to have_been_enqueued
    end

    it "Test subject" do
      ActiveJob::Base.queue_adapter = :test
      UpdatePageJob.perform_later(page)
      expect(UpdatePageJob).to have_been_enqueued
    end

  end
end