class EmptyJob < ApplicationJob
  queue_as :utils

  def perform
  	Rails.logger.info "I'm empty job, I'm doing nothing"
    sleep rand
  end
end