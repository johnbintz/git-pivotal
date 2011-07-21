require 'commands/pick'

module Commands
  class Chore < Pick

    def type
      "chore"
    end
    
    def plural_type
      "chores"
    end

  end
end
