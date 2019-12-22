require './models/kind_enumeration.rb'

class Coupon
  #In Ruby with ActiveSupport::Concern this should be an `include

  extend KindEnumeration
  attr_accessor :kind
end