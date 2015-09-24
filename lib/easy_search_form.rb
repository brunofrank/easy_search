require "easy_search_form/version"
require 'easy_search_form/easysearch_helper'

module EasySearchForm
  def self.included(base)
    base.send :extend, ClassMethods
  end
 
  module ClassMethods
    def acts_as_searchable(*args)
      @search_options = args
      self.send :extend, SearchClassMethods
    end
  end
  
  module SearchClassMethods
    def search(search)
      if search
        query = []
        values = []
        @search_options.each do |opt|
          condition_type = nil
        
          if opt.instance_of?(Hash)
            debugger
            case opt[opt.keys.first]
            when :equals
              condition_type = "="
            else
              condition_type = "LIKE"
            end
            
            query << "#{opt.keys.first} #{condition_type} ?"
          else
            query << "#{opt} LIKE ?"
          end
        
          if condition_type.nil? or condition_type == "LIKE"
            values << "%#{search}%"
          else
            values << search
          end            
        end
        
        conditions = [query.join(" OR ")]
        conditions += values
        
        find(:all, :conditions => conditions)
      else
        all
      end
    end      
  end
end

ActionView::Base.send :include, EasySearchHelper
ActiveRecord::Base.send :include, EasySearchForm