require 'has_magic_columns/has_magic_columns'
require 'has_magic_columns/version'
require 'has_magic_columns/railtie' if defined?(Rails)

# Has Magic Columns
#
# Copyright (c) 2007 Brandon Keene <bkeene AT gmail DOT com>
#
# Extends @attributes on a per model basis.  Column definitions exist through
# the built-in :magic_columns association.
#
# class Model < ActiveRecord::Base
#   has_magic_columns
# end
#
# @model = Model.create(...) #=> @model.id == 1
# @model.magic_columns << MagicColumn.create(:name => "first_name")
# @model.first_name = "Brandon"
# @model.save
# @model = Model.find(1)
# @model.first_name #=> "Brandon"
module HasMagicColumns # :nodoc:
end

%w{ models }.each do |dir|
  path = File.join(File.dirname(__FILE__), 'app', dir)
  $LOAD_PATH << path
  ActiveSupport::Dependencies.load_paths << path
  ActiveSupport::Dependencies.load_once_paths.delete(path)
end

