require 'dm-rest-adapter'
require 'dm-core/spec/setup'

module DataMapper
  module Spec
    module Adapters

      class RestAdapter < Adapter
      end

      use RestAdapter

    end
  end
end
