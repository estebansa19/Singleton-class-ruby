require './models/kind_enumeration'

class Event
  #In Ruby with ActiveSupport::Concern this should be an `include`

  extend KindEnumeration
  attr_accessor :kind
end