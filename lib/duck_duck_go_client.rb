module DuckDuckGoClient
  def self.search(query)
    topic_summary = TopicSummary.new(query)
    return topic_summary if topic_summary.valid?
    Scraper.new(query).results
  end
end