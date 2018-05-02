require 'rails_helper'

RSpec.describe GetLinksJob, :type => :job do
  describe "#perform_later" do
    it "uploads a backup" do
      ActiveJob::Base.queue_adapter = :test
      GetLinksJob.perform_later('backup')
      expect(GetLinksJob).to have_been_enqueued
    end
  end
end