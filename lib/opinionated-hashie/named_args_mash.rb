module Hashie
  class NamedArgsMash < Hashie::Mash
    def initialize overrides, defaults={}
      super(defaults.merge(overrides))
    end
  end
end
