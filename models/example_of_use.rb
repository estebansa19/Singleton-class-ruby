require './models/coupon_with_singleton'
require './models/event_with_singleton'

Coupon.kinds(:discount, :season)

c = Coupon.new
c.kind = 'discount'

puts Coupon::KINDS.join(' ')
# ["discount", "season"]

puts Coupon::Kind::DISCOUNT
# "discount"

puts c.discount?
# true


# ------------------------- SECOND EXAMPLE -------------------------------------- #


Event.kinds(:party, :birthday)

e = Event.new
e.kind = 'party'

puts Event::KINDS
# ["party", "birthday"]

puts Event::Kind::PARTY
# ["party"]

puts e.party?