app_dir = File.expand_path('../', __dir__)

threads_count = ENV.fetch('RAILS_MAX_THREADS') { 5 }
threads threads_count, threads_count

environment ENV.fetch('RAILS_ENV') { 'production' }
workers ENV.fetch('WEB_CONCURRENCY') { 2 }
pidfile "#{app_dir}/tmp/pids/puma.pid"
bind 'tcp://127.0.0.1:8081'

stdout_redirect "#{app_dir}/log/puma.stdout.log", "#{app_dir}/log/puma.stderr.log", true
daemonize true
activate_control_app "unix://#{app_dir}/tmp/sockets/pumactl.sock"
state_path "#{app_dir}/tmp/pids/puma.state"
