module EasySearchHelper
  def search_form
    render :file => File.dirname(__FILE__) + '/views/_search_form.html.erb'
  end
end