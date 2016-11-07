# Variables
module Variables
  def search_text
    @search_text ||= 'Aikido'
  end

  def wiki_page_title
    @wiki_page_title ||= "#{@search_text} - Wikipedia"
  end
end

World(Variables)
