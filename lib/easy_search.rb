require "easy_search/version"
require 'easy_search/acts_as_searchable'
require 'easy_search/easysearch_helper'

module EasySearch
  # Your code goes here...
end

ActionView::Base.send :include, EasySearchHelper