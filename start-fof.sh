[ -s "$HOME/.rvm/scripts/rvm" ] && . "$HOME/.rvm/scripts/rvm"
cd fof
cd Fields-of-Fuel-Server
rvm use 2.0.0
kill `cat tmp/pids/server.pid`
rm tmp/pids/server.pid
rails s -d
cd ../Fields-of-Fuel-Model
rvm use jruby
jruby server_control.rb restart -p 1238
