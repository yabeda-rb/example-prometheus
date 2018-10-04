Sidekiq.configure_server do |config|
  config.server_middleware do |chain|
    chain.add Evil::Metrics::Sidekiq::ServerMiddleware
  end
  config.client_middleware do |chain|
    chain.add Evil::Metrics::Sidekiq::ClientMiddleware
  end
  Evil::Metrics::Prometheus::Exporter.start_metrics_server!
end

Sidekiq.configure_client do |config|
  config.client_middleware do |chain|
    chain.add Evil::Metrics::Sidekiq::ClientMiddleware
  end
end
