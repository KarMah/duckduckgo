if @results.is_a?(Array)
  json.search_results @results, :main_url, :main_text, :description, :bottom_url
end