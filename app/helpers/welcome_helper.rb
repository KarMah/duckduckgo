module WelcomeHelper
  def is_topic_summary?
    @results.is_a?(DuckDuckGoClient::TopicSummary)
  end
end
