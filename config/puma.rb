#!/usr/bin/env puma
directory './'
rackup DefaultRackup
environment ENV.fetch("RAILS_ENV") { "development" }

pidfile "./tmp/pids/puma.pid"
state_path "./tmp/pids/puma.state"
stdout_redirect './log/puma_access.log', './log/puma_error.log', true


threads 0,16

bind 'tcp://0.0.0.0:9901'
#bind 'unix:///./tmp/sockets/puma.sock'

#workers 2



preload_app!

on_worker_boot do
  ActiveSupport.on_load(:active_record) do
    ActiveRecord::Base.establish_connection
  end
end

