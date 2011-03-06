require 'rubygems'
require 'pathname'
require 'fakeweb'
require 'dm-validations'

# Support running specs with 'rake spec' and 'spec'
$LOAD_PATH.unshift('lib') unless $LOAD_PATH.include?('lib')

require 'dm-rest-adapter'

ROOT = Pathname(__FILE__).dirname.parent

DataMapper.setup(:default, 'rest://admin:secret@localhost:4000/?format=xml')

Dir[ROOT / 'spec' / 'fixtures' / '**' / '*.rb'].each { |rb| require rb }

FakeWeb.allow_net_connect = false
