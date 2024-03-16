# app.rb
# `bundle install`
# run with `ruby dice.rb`

require "sinatra"
require "sinatra/reloader"
require "better_errors"
require "binding_of_caller"

# Need this configuration for better_errors
use(BetterErrors::Middleware)
BetterErrors.application_root = __dir__
BetterErrors::Middleware.allow_ip!('0.0.0.0/0.0.0.0')

# ------------------------------------------------------------------ #

get('/') do
  erb(:main)
end

# ------------------------------------------------------------------ #

get('/rock') do
  options = ["rock", "paper", "scissors"]
  @computer = options.sample
  @player = "rock"

  erb(:rock)
end

# ------------------------------------------------------------------ #

get('/paper') do
  erb(:paper)
end

# ------------------------------------------------------------------ #

get('/scissors') do
  erb(:scissors)
end

# ------------------------------------------------------------------ #
