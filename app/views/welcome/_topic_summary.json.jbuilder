if is_topic_summary?
  json.topic_summary @results, :abstract, :abstract_text, :image, :abstract_url, :abstract_source, :heading, 
        :answer, :answer_type, :definition, :definition_source, :definition_url, :type, :results
end