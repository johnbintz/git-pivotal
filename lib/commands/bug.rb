require 'commands/pick'

module Commands
  class Bug < Pick

    def type
      "bug"
    end
    
    def plural_type
      "bugs"
    end
    
  end
end
