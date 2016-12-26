set :application, "deploy_test"
set :repo_url, "git@github.com:gemoraga/deploy_test.git"

set :deploy_to, '/home/deploy/my_app_name'

append :linked_files, "config/database.yml", "config/secrets.yml"
append :linked_dirs, "log", "tmp/pids", "tmp/cache", "tmp/sockets", "vendor/bundle", "public/system", "public/uploads"