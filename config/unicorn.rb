listen "/tmp/pahart.sock"
listen "127.0.0.1:8080"
worker_processes 2
user "rails"
working_directory "/home/rails/pahart"
pid "/home/unicorn/pids/pahart_unicorn.pid"
stderr_path "/home/unicorn/log/unicorn.log"
stdout_path "/home/unicorn/log/unicorn.log"
