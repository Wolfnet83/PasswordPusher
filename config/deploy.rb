# config valid only for current version of Capistrano
lock '3.3.5'

set :application, 'barebones_password_pusher'
set :repo_url, 'git@github.com:Wolfnet83/PasswordPusher.git'

# Default branch is :master
# ask :branch, proc { `git rev-parse --abbrev-ref HEAD`.chomp }.call
set :branch, "dev"

# Default deploy_to directory is /var/www/my_app_name
set :deploy_to, '/home/deployer/password'

#RBENV settings
set :rbenv_type, :user
set :rbenv_ruby, '2.1.5'

# Default value for :scm is :git
# set :scm, :git

# Default value for :format is :pretty
# set :format, :pretty

# Default value for :log_level is :debug
# set :log_level, :debug

# Default value for :pty is false
# set :pty, true

# Default value for :linked_files is []
# set :linked_files, fetch(:linked_files, []).push('config/database.yml')

# Default value for linked_dirs is []
# set :linked_dirs, fetch(:linked_dirs, []).push('bin', 'log', 'tmp/pids', 'tmp/cache', 'tmp/sockets', 'vendor/bundle', 'public/system')

# Default value for default_env is {}
# set :default_env, { path: "/opt/ruby/bin:$PATH" }

# Default value for keep_releases is 5
# set :keep_releases, 5

namespace :deploy do

  after :restart, :clear_cache do
    on roles(:web), in: :groups, limit: 3, wait: 10 do
      # Here we can do anything such as:
      # within release_path do
      #   execute :rake, 'cache:clear'
      # end
    end
  end

  desc 'Restart httpd'
  task :httpd_restart do
    on roles(:all) do
      execute "sudo service httpd restart"
    end
  end

  desc 'Create symlink'
  task :symlink do
    on roles(:all) do
      execute "ln -s #{shared_path}/config/database.yml #{release_path}/config/database.yml"
      #execute "ln -s #{shared_path}/system #{release_path}/public/system"
    end
  end

  after :updated, 'deploy:symlink'
  after :updated, 'deploy:httpd_restart'

end
