root = "/home/deployer/apps/blog/current"
working_directory root
pid "#{root}/tmp/pids/unicorn.pid"
stderr_path "#{root}/log/unicorn.stderr.log"
stdout_path "#{root}/log/unicorn.stdout.log"

listen "/tmp/unicorn.blog.sock"
listen 8081, :tcp_nopush => true
#listen "127.0.0.1:3000"
worker_processes 2
timeout 30