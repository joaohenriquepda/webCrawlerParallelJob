class UpdatePageJob < ApplicationJob
  queue_as :default

  def perform(*args)
    puts args
  end
end