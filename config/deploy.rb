set :application, "wdcnz"
set :repository,  "git@github.com:buildmaster/#{application}.git"

set :scm, :git

set :deploy_to, lambda {"/home/#{user}/application"}

set :use_sudo, false
set :user, "wdcnz"
set :rails_env, "production"
set :branch, "master"

role :web, "wcnz.southgatelabs.com"
role :app, "wcnz.southgatelabs.com"
role :db,  "wcnz.southgatelabs.com", :primary => true 


namespace :deploy do
  task :stop do
    # run "for service in /home/#{user}/service/* ; do sv down $service ; done "
  end

  task :start do
    # run "for service in /home/#{user}/service/* ; do sv up $service ; done "
  end

  task :restart, :roles => [:app] do
    run "cd #{current_path} && touch tmp/restart.txt"
    # run "for service in /home/#{user}/service/* ; do sv restart $service ; done "
  end

  task :symlink_configs do
  end
  
end

namespace :cron do
  task :install do
    # run "crontab #{current_path}/config/crontabs/#{rails_env}"
  end
end


after "deploy:restart" do
  # cron.install
end

require 'bundler/capistrano'
