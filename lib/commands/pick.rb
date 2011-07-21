require 'commands/base'
require 'babosa'

module Commands
  class Pick < Base

    def type
      raise Error("must define in subclass")
    end

    def plural_type
      raise Error("must define in subclass")
    end

    def run!
      response = super
      return response if response > 0

      msg = "Retrieving latest #{plural_type} from Pivotal Tracker"
      if options[:only_mine]
        msg += " for #{options[:full_name]}"
      end
      put "#{msg}..."

      unless story
        put "No #{plural_type} available!"
        return 0
      end

      put "Story: #{story.name}"
      put "URL:   #{story.url}"

      put "Updating #{type} status in Pivotal Tracker..."
      if story.update(:owned_by => options[:full_name], :current_state => :started)

        slugifyed_title = story.name.to_slug.normalize.to_s
        suffix_or_prefix = ""
        unless options[:quiet] || options[:defaults]
          put "Enter branch name or press Enter to use story title (will be #{options[:append_name] ? 'appended' : 'prepended'} by #{story.id}) [#{slugifyed_title}]: ", false
          suffix_or_prefix = input.gets.chomp
        end
        suffix_or_prefix = slugifyed_title if suffix_or_prefix == ""

        if options[:append_name]
          branch = "#{suffix_or_prefix}-#{story.id}"
        else
          branch = "#{story.id}-#{suffix_or_prefix}"
        end
        if get("git branch").match(branch).nil?
          put "Switched to a new branch '#{branch}'"
          sys "git checkout -b #{branch}"
        end

        return 0
      else
        put "Unable to mark #{type} as started"

        return 1
      end
    end

  protected

    def story
      return @story if @story

      conditions = { :story_type => type, :current_state => "unstarted", :limit => 1, :offset => 0 }
      conditions[:owned_by] = options[:full_name] if options[:only_mine]
      @story = project.stories.all(conditions).first
    end
  end
end
