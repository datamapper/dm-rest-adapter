require 'rexml/document'

require 'cgi'  # for CGI.escape
require 'addressable/uri'

require 'dm-core'
require 'dm-serializer'

require 'dm-rest-adapter/adapter'
require 'dm-rest-adapter/connection'
require 'dm-rest-adapter/formats'
require 'dm-rest-adapter/exceptions'

DataMapper::Adapters::RestAdapter = DataMapperRest::Adapter
