require 'rails_helper'

RSpec.describe GetH3Job, :type => :job do
  describe "#perform_later" do
    it "uploads a backup" do
      ActiveJob::Base.queue_adapter = :test
      GetH3Job.perform_later('backup')
      expect(GetH3Job).to have_been_enqueued
    end
  end
end