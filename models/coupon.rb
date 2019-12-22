class Coupon
  #An example model with kind attribute, this uses a module with the kinds and has methods to validate the kind type

  attr_accessor :kind

  module Kind
    EMPLOYEE = 'employee referral'.freeze
    CUSTOMER = 'customer referral'.freeze
    AFFILIATE = 'affiliate referral'.freeze
    AMBASSADOR = 'ambassador referral'.freeze
  end

  KINDS = [Kind::EMPLOYEE,
           Kind::CUSTOMER,
           Kind::AMBASSADOR,
           Kind::AFFILIATE]

  def employee?
    kind == Kind::EMPLOYEE
  end

  def customer?
    kind == Kind::CUSTOMER
  end

  def ambassador
    kind == Kind::AMBASSADOR
  end

  def affiliate
    kind == Kind::AFFILIATE
  end
end