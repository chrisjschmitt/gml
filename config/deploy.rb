set :application, "giftmylist.com"
set :deploy_to, "/home/cavas/public_html/#{application}"
set :user, "cavas"
set :admin_runner, "cavas"

set :port, 6220

default_run_options[:pty] = true
set :repository,  "git://github.com/chrisjschmitt/gml.git"
set :scm, "git"
set :branch, "master"
set :deploy_via, :remote_cache
set :keep_releases, 5

role :app, "kwikwish.com"
role :web, "kwikwish.com"
role :db,  "kwikwish.com", :primary => true

## CUSTOM TASKS

# server-side database.yml
# see Railscasts episode 133 for more examples
# before "deploy:setup", :db
after "deploy:update_code", "db:symlink"
namespace :db do
   desc "symlink shared database.yml to release"
   task :symlink do
     run "ln -nfs #{shared_path}/config/database.yml #{release_path}/config/database.yml"
   end
end

namespace :deploy do
  desc "Restart Application"
  task :restart, :roles => :app do
    run "touch #{current_path}/tmp/restart.txt"
  end
  desc "Start Application -- not needed for Passenger"
  task :start, :roles => :app do
    # nothing -- need to override default cap start task when using Passenger
  end
end