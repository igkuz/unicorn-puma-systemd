app_dir = File.expand_path("../", __dir__)

worker_processes 2
working_directory app_dir
listen 8080
timeout 30
pid "#{app_dir}/tmp/pids/unicorn.pid"
stderr_path "#{app_dir}/log/unicorn.stderr.log"
stdout_path "#{app_dir}/log/unicorn.stdout.log"
