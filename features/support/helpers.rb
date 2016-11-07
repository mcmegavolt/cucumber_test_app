# Test helpers
module Helpers
  def submit_form
    find('button[name="btnG"]').click
  end

  def click_next_after_wikipedia
    page.find('#search') # Will wait for load search results

    result_nodes = page.all('#search .g:not(#imagebox_bigimages)')

    target_node_index = 0

    result_nodes.each_with_index do |el, index|
      target_node_index = index
      break if el.find('a', match: :first).text == wiki_page_title
    end

    result_nodes[target_node_index + 1].find('a', match: :first).click
  end
end

World(Helpers)
