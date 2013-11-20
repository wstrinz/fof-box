sudo apt-get install redis-server
[ -s "$HOME/.rvm/scripts/rvm" ] && . "$HOME/.rvm/scripts/rvm"
mkdir fof
cd fof
git clone https://github.com/wstrinz/Fields-of-Fuel-Server.git
cd Fields-of-Fuel-Server
git checkout dev
rvm use 2.0.0
bundle
rake db:migrate
cd ..
git clone https://github.com/wstrinz/Fields-of-Fuel-Model.git
cd Fields-of-Fuel-Model
git checkout development
rvm use jruby-1.7.6
bundle
