Sidekiq.configure_server do |config|
  Evil::Metrics::Prometheus::Exporter.start_metrics_server!
end
