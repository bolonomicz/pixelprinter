source :gemcutter

gem "rails", "2.3.18"
gem "rake", "0.8.7"
gem 'liquid', '2.3.0', :git => 'git://github.com/Shopify/liquid.git', :ref => '6ebdded'

group :production do
  gem "memcached", "0.18.0"
end

group :development do
  gem "mysql"
  gem "mongrel"
end


group :test do
  gem "mocha"
  gem "context"
end

gem 'gembeat', '~> 0.0.1'
gem 'json'