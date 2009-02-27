# Include hook code here
require 'site_scaffold'

# FIX PROBLEM OF MIGRATIONS WITH SAME TIMESTAMP
require 'rails_generator'
require 'rails_generator/scripts/generate'

class Rails::Generator::Commands::Base
  def after_generate(*args) ; end
end

class Rails::Generator::Commands::Create
  def after_generate(*args)
    path = "#{Rails.root}/db/migrate/"
    inc = 0

    args.each do |m|
      migration = Dir.entries(path).find_all {|g| g =~ /[0-9]*_#{m}.rb/ }.first
      new_migration = Dir.entries(path).find_all {|g| g =~ /[0-9]*_#{m}.rb/ }.first

      si = migration.index("_") - 1 # last second index
      new_migration[si..si] = (migration[si..si].to_i + inc).to_s

      File.rename(path+migration, path+new_migration)
      inc += 1
    end
  end
end
