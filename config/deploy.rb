# config valid only for current version of Capistrano
lock '3.4.0'

set :application, 'wxoss'
set :repo_url, 'git@gitserver:unionsupport/wxoss.git'

# Default branch is :master
# ask :branch, `git rev-parse --abbrev-ref HEAD`.chomp

# Default deploy_to directory is /var/www/my_app_name
set :deploy_to, '/home/lcims/dev/wxoss'

# set :deploy_user, 'git'            # 设置部署时的用户

# Default value for :scm is :git
set :scm, :git

# Default value for :format is :pretty
set :format, :pretty

# Default value for :log_level is :debug
set :log_level, :info

# Default value for :pty is false
set :pty, false

# Default value for :linked_files is []
set :linked_files, fetch(:linked_files, []).push('config/database.yml', 'config/secrets.yml')

# Default value for linked_dirs is []
set :linked_dirs, fetch(:linked_dirs, []).push('log', 'tmp/pids', 'tmp/cache', 'tmp/sockets', 'vendor/bundle', 'public/system')

# Default value for default_env is {}
# set :default_env, { path: "/usr/local/ruby/bin:$PATH" }

# Default value for keep_releases is 5
set :keep_releases, 5

# puma settings
set :puma_state, "#{shared_path}/tmp/pids/puma.state"
set :puma_pid, "#{shared_path}/tmp/pids/puma.pid"
set :puma_bind, ["tcp://0.0.0.0:9901", "unix://#{shared_path}/tmp/sockets/puma.sock"]
set :puma_conf, "#{shared_path}/config/puma.rb"
set :puma_access_log, "#{shared_path}/log/puma_access.log"
set :puma_error_log, "#{shared_path}/log/puma_error.log"
set :puma_role, :app
set :puma_env, fetch(:rack_env, fetch(:rails_env, 'test'))
set :puma_threads, [0, 16]
set :puma_workers, 2
set :puma_init_active_record, true
set :puma_preload_app, true

set :sidekiq_config, -> { File.join(shared_path, 'config', 'sidekiq.yml') }
set :sidekiq_monit_use_sudo, false

#使用sudo：1.vi /etc/sudoers 注释 Defaults requiretty 2.新增/etc/sudoers.d/wxoss文件内容lcims ALL=(ALL) NOPASSWD: ALL
namespace :deploy do

  desc 'deploy logrotate'
  task :logrotate do
    on roles(:all) do
      within release_path do
        execute "sudo cp #{current_path}/lib/supports/logrotate/wxoss /etc/logrotate.d/wxoss"
      end
    end
  end

  desc 'clear cache store'
  task :clear_cache_store do
    on roles(:all) do
      within release_path do
        with rails_env: fetch(:rails_env) do
          execute :rake, 'cache:clear'
        end
      end
    end
  end
  after :finishing, 'deploy:clear_cache_store'
  after :finishing, 'deploy:logrotate'
end