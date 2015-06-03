if @results.is_a?(DuckDuckGoClient::TopicSummary)
  json.topic_summary @results, :abstract, :abstract_text, :image, :abstract_url, :abstract_source, :heading, 
        :answer, :answer_type, :definition, :definition_source, :definition_url, :type, :results
end