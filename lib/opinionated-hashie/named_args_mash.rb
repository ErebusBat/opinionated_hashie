module Hashie
  class NamedArgsMash < Hashie::Mash
    def initialize overrides, defaults={}
      super(defaults.merge(overrides))
    end

    # Allows you to set a value only if it has not already been set before
    def set_default key, value
      return false if has_key?(key)
      self[key] = value
    end
  end
end
