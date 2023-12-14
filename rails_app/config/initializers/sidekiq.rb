# frozen_string_literal: true

Sidekiq.configure_server do
  Yabeda::Prometheus::Exporter.start_metrics_server!
end
