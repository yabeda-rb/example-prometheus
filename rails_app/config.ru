# This file is used by Rack-based servers to start the application.

require_relative 'config/environment'

use Evil::Metrics::Prometheus::Exporter

run Rails.application
