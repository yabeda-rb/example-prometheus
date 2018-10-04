class HomeController < ApplicationController
  def index
  end

  def enqueue
    rand(1000).times do
      EmptyJob.perform_later
    end
    rand(1000).times do
      WaitingJob.perform_later
    end
    rand(100).times do
      DangerJob.perform_later
    end
    redirect_to root_path
  end
end
