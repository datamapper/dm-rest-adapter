require 'pathname'

source 'http://rubygems.org'

SOURCE       = ENV.fetch('SOURCE', :git).to_sym
REPO_POSTFIX = SOURCE == :path ? ''                                : '.git'
DATAMAPPER   = SOURCE == :path ? Pathname(__FILE__).dirname.parent : 'http://github.com/datamapper'
DM_VERSION   = '~> 1.1.0'

gem 'dm-serializer', DM_VERSION, SOURCE => "#{DATAMAPPER}/dm-serializer#{REPO_POSTFIX}"

group :development do

  gem 'dm-validations', DM_VERSION, SOURCE => "#{DATAMAPPER}/dm-validations#{REPO_POSTFIX}"
  gem 'fakeweb',        '~> 1.3'
  gem 'jeweler',        '~> 1.5.2'
  gem 'rake',           '~> 0.8.7'
  gem 'rspec',          '~> 1.3.1'

end

platforms :mri_18 do
  group :quality do

    gem 'rcov',      '~> 0.9.9'
    gem 'yard',      '~> 0.6'
    gem 'yardstick', '~> 0.2'

  end
end

group :datamapper do

  gem 'dm-core', DM_VERSION, SOURCE => "#{DATAMAPPER}/dm-core#{REPO_POSTFIX}"

  plugins = ENV['PLUGINS'] || ENV['PLUGIN']
  plugins = plugins.to_s.tr(',', ' ').split.uniq

  plugins.each do |plugin|
    gem plugin, DM_VERSION, SOURCE => "#{DATAMAPPER}/#{plugin}#{REPO_POSTFIX}"
  end

end
