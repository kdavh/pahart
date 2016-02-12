listen "127.0.0.1:3000"
worker_processes 1
user "root"
working_directory "."
pid "./tmp/pahart_unicorn.pid"
stderr_path "./log/unicorn.stderr.log"
stdout_path "./log/unicorn.stdout.log"
