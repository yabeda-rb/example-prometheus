# frozen_string_literal: true

class WaitingJob < ApplicationJob
  def perform
    sleep rand(10)
  end
end
