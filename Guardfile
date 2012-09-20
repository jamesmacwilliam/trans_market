# A sample Guardfile
# More info at https://github.com/guard/guard#readme
require 'guard'
require 'guard/guard'

module ::Guard
  class Mustache < ::Guard::Guard

    def run_on_changes(paths)
      # file to be updated when any mustache template is updated
      file_name = "./app/assets/javascripts/backbone/templates/templates.js.erb"

      # get array of lines in file
      lines = File.readlines(file_name)

      # if last line is a comment delete
      lines.delete_at(-1) if lines[-1].match /\/\//

      # add timestamp
      lines << "// #{Time.now}"

      # rewrite file
      File.open(file_name, "w") do |f|
        lines.each{|line| f.puts(line)}
      end

    end

  end
end

guard 'mustache' do
  watch(%r{^app/assets/javascripts/backbone/templates/.+\.html\.haml})
end
