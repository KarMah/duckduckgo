unless is_topic_summary?
  json.search_results @results, :main_url, :main_text, :description, :bottom_url
end
