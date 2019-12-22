module KindEnumeration
  # Module which abstracts all the logic
  # With RoR this should have `included do` and require `include` instead of `extends` in classes

  def kinds(*list)
    const_set('Kind', Module.new)
    const_set('KINDS', list.map(&:to_s).freeze)

    list.each do |item|
      self::Kind.const_set(item.to_s.upcase, item.to_s.freeze)

      define_method("#{item}?") do
        self.kind == item.to_s
      end
    end
  end
end