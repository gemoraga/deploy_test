set :application, "prodelco"
set :repo_url, "git@github.com:gemoraga/deploy_test.git"
set :rbenv_path, '/home/deploy/.rbenv'
set :deploy_to, '/home/deploy/prodelco'

append :linked_files, "config/database.yml", "config/secrets.yml"
append :linked_dirs, "log", "tmp/pids", "tmp/cache", "tmp/sockets", "vendor/bundle", "public/system", "public/uploads"