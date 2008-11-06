set :application, "giftmylist.com"
set :deploy_to, "/home/cavas/public_html/#{application}"
#set :project, "jump_off"
set :user, "cavas"
set :admin_runner, "cavas"

set :port, 6220
# stopped configuring here...

default_run_options[:pty] = true
set :repository,  "git@github.com:ryanlowe/#{project}.git"
set :scm, "git"
set :branch, "master"

set :deploy_to, "/home/#{user}/rails/#{project}"
set :deploy_via, :remote_cache

set :runner, user # mongrel

role :app, application
role :web, application
role :db,  application, :primary => true

## CUSTOM TASKS

# server-side database.yml
before "deploy:setup", :db 
after "deploy:update_code", "db:symlink" 
namespace :db do 
   desc "symlink shared database.yml to release" 
   task :symlink do 
     run "ln -nfs #{shared_path}/config/database.yml #{release_path}/config/database.yml" 
   end 
end