require 'nokogiri'
require 'open-uri'
module DuckDuckGoClient
  class Scraper
    def initialize(query)
      @query = query
    end

    def results
      return @results unless @results.blank?
      @results = []
      document = Nokogiri::HTML(open(url, 'User-Agent' => user_agent))
      @results = document.css('div.results_links').map {|child| SearchResult.new(child)} 
    end

    private
    
    def url_path
      "https://duckduckgo.com/html/"
    end

    def url_query
      "?q=#{@query}&ia=about&iax=1&kl=us-en"
#       "?q=#{@query}&ia=meanings"
    end

    def url
      "#{url_path}#{url_query}"
    end

    def user_agent
      "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/535.2 (KHTML, like Gecko) Chrome/15.0.854.0 Safari/535.2"
    end
  end
end