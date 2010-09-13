# If you're working on more than one datamapper gem at a time, then it's
# recommended to create a local Gemfile and use this instead of the git
# sources. This will make sure that you are  developing against your
# other local datamapper sources that you currently work on. Gemfile.local
# will behave identically to the standard Gemfile apart from the fact that
# it fetches the gems from local paths. This means that you can use the
# same environment variables, like ADAPTER when running bundle commands.
# Gemfile.local is added to .gitignore, so you don't need to worry about
# accidentally checking local development paths into git.
#
#   bundle exec rake local_gemfile
#
# will give you a Gemfile.local file that points to your local clones of
# the various datamapper gems. It's assumed that all datamapper repo clones
# reside in the same directory. You can use the Gemfile.local like so for
# running any bundle command:
#
#   BUNDLE_GEMFILE=Gemfile.local bundle foo
#
# To speed up running bundle tasks, it's recommended to run
#
#   bundle lock
#
# after running 'bundle install' for the first time. This will make 'bundle exec' run
# a lot faster compared to the unlocked version. With an unlocked bundle you would
# typically just run 'bundle install' from time to time to fetch the latest sources from
# upstream. When you locked your bundle, you need to run
#
#   bundle install --relock
#
# to make sure to fetch the latest updates and then lock the bundle again. Gemfile.lock
# is added to the .gitignore file, so you don't need to worry about accidentally checking
# it into version control.

source 'http://rubygems.org'

DATAMAPPER = 'git://github.com/datamapper'
DM_VERSION = '~> 1.0.2'

group :runtime do # Runtime dependencies (as in the gemspec)

  gem 'dm-core',         DM_VERSION, :git => "#{DATAMAPPER}/dm-core.git"
  gem 'dm-serializer',   DM_VERSION, :git => "#{DATAMAPPER}/dm-serializer.git"

end

group(:development) do # Development dependencies (as in the gemspec)

  gem 'dm-validations',  DM_VERSION, :git => "#{DATAMAPPER}/dm-validations.git"

  gem 'fakeweb',         '~> 1.3'
  gem 'rake',            '~> 0.8.7'
  gem 'rspec',           '~> 1.3', :git => 'git://github.com/snusnu/rspec', :branch => 'heckle_fix_plus_gemfile'
  gem 'jeweler',         '~> 1.4'

end

group :datamapper do # We need this because we want to pin these dependencies to their git master sources

  if ENV['EXTLIB']
    gem 'extlib',        '~> 0.9.15', :git => "#{DATAMAPPER}/extlib.git", :require => nil
  else
    gem 'activesupport', '~> 3.0.0',  :git => 'git://github.com/rails/rails.git', :branch => '3-0-stable', :require => nil
  end

  plugins = ENV['PLUGINS'] || ENV['PLUGIN']
  plugins = plugins.to_s.tr(',', ' ').split.uniq

  plugins.each do |plugin|
    gem plugin, DM_VERSION, :git => "#{DATAMAPPER}/#{plugin}.git"
  end

end

group :quality do # These gems contain rake tasks that check the quality of the source code

  gem 'metric_fu',       '~> 1.3'
  gem 'rcov',            '~> 0.9.7'
  gem 'reek',            '~> 1.2.7'
  gem 'roodi',           '~> 2.1'
  gem 'yard',            '~> 0.5'
  gem 'yardstick',       '~> 0.1'

end
