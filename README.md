# Example of Rails and Sidekiq metrics exported to Prometheus + Grafana

This example illustrates how to use [evil-metrics] with rails application and draw graphs.

## Prerequisites

Recent versions of Docker and Docker Compose installed.

## Usage

- Execute `docker-compose up` to start.
- Go to rails application at http://localhost:5000
- Hit the button and refresh page few times
- Go to Grafana Web UI at http://localhost:3000/d/000000001/evil-metrics-rails-and-sidekiq (user: `admin`/`admin`)
- Look for graphs

## Notes

- Sample [Rails] application is equipped with [evil-metrics-rails], [evil-metrics-sidekiq], and [evil-metrics-prometheus] gems and properly configured.
- Raw rails metrics are exposed at http://localhost:5000/metrics
- Raw sidekiq metrics are exposed at http://localhost:5100/metrics
- The [Prometheus] Web UI runs at http://localhost:9090
- The [Grafana] Web UI runs at http://localhost:3000 , user: `admin`/`admin`.
- The [Sidekiq] Web UI is available at http://localhost:5000/sidekiq

## Acknowledgement

The configurations are based off the following articles and repositories:
 - https://finestructure.co/blog/2016/5/16/monitoring-with-prometheus-grafana-docker-part-1
 - https://github.com/NikolajLeischner/local-prometheus-grafana
 - https://www.digitalocean.com/community/tutorials/how-to-add-a-prometheus-dashboard-to-grafana

## License

This example is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

[evil-metrics]: https://github.com/evil-metrics/evil-metrics
[evil-metrics-rails]: https://github.com/evil-metrics/evil-metrics-rails
[evil-metrics-sidekiq]: https://github.com/evil-metrics/evil-metrics-sidekiq
[evil-metrics-prometheus]: https://github.com/evil-metrics/evil-metrics-prometheus
[Rails]: https://rubyonrails.org "Ruby on Rails MVC web-application framework optimized for programmer happiness"
[Sidekiq]: https://github.com/mperham/sidekiq/ "Simple, efficient background processing for Ruby"
[Prometheus]: https://prometheus.io/ "Open-source monitoring solution"
[Grafana]: https://grafana.com/