require File.dirname(__FILE__) + '/test_helper'
include EasySearchHelper  

class EasySearchTest < ActiveSupport::TestCase
  load_schema 
    
  class User < ActiveRecord::Base
    acts_as_searchable :name
  end  
  
  def test_schema_has_loaded_correctly
    assert_equal [], User.all
  end
  
  def test_model_has_search_form
    assert User.respond_to?(:search)
  end  
  
  def test_controllers_has_search_form
    assert self.respond_to?(:search_form)
  end
end
