require 'rails_helper'

RSpec.describe GetH2Job, :type => :job do
  describe "#perform_later" do
    it "uploads a backup" do
      ActiveJob::Base.queue_adapter = :test
      GetH2Job.perform_later('backup')
      expect(GetH2Job).to have_been_enqueued
    end
  end
end