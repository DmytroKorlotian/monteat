#About idea - Monteat
This app was developed in RoR, using Ruby 2.3.0 and Rails 5.

## TL;DR
Application coordinating meal ordering for users, which need to sign in first. Authentication provided by facebook via Oauth.

## Assumptions
User can order only one meal per day, can check  current and archived orders.
Visitors can't see where do authenticated users order their food from and what do they order.

## Main gems used:
gem 'uglifier', '>= 1.3.0'
gem 'byebug', platform: :mri
gem 'bootstrap-sass'
gem 'haml-rails'
gem 'omniauth'
gem 'omniauth-facebook'
gem 'dotenv-rails'
gem 'factory_girl_rails'
gem 'sqlite3'
gem 'capybara'
