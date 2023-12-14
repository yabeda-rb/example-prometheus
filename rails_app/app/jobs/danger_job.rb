# frozen_string_literal: true

class DangerJob < ApplicationJob
  def perform
    raise "You're not lucky today" if rand < 0.5
  end
end
