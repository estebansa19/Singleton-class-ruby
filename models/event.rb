class Event
  #An example model with kind attribute, this uses a module with the kinds and has methods to validate the kind type

  attr_accessor :kind

  module Kind
    ARRIVE = 'arrive'.freeze
    DEPART = 'depart'.freeze
  end

  KINDS = [Kind::ARRIVE, Kind::DEPART]

  def arrive?
    kind == Kind::ARRIVE
  end

  def depart?
    kind == Kind::DEPART
  end
end