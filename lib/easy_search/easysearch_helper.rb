module EasySearchHelper
  def search_form
    search_form = "<form id='search-form' action='#{url_for(:controller => controller_name, :action => action_name)}' method='GET'>"
    search_form += "<input type='text' name='query' value='#{params[:query]}'/>"
    search_form += "<input type='submit' id='search-button'/>" 
    search_form += "</form>"     
    search_form.html_safe
  end
end