if !is_topic_summary? && @results.present?
  json.search_results @results, :main_url, :main_text, :description, :bottom_url
end
