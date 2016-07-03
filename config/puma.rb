#!/usr/bin/env puma
# RAILS_ENV=production bundle exec puma -C ./config/puma.rb

application_path = File.expand_path('../', File.dirname(__FILE__))

directory application_path
environment ENV['RAILS_ENV']

bind 'tcp://localhost:7089/'
pidfile "#{application_path}/tmp/puma/pid"
state_path "#{application_path}/tmp/puma/state"
stdout_redirect "#{application_path}/log/puma.stdout.log", "#{application_path}/log/puma.stderr.log"

daemonize true
activate_control_app
