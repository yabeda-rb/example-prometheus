Sidekiq.configure_server do |config|
  Yabeda::Prometheus::Exporter.start_metrics_server!
end
