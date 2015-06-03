module DuckDuckGoClient
  class SearchResult
    def initialize(result)
      @result = result
    end

    def main_url
      @result.css('div.links_main a.large').first['href'].strip
    end

    def main_text
      @result.css('div.links_main a.large').text.strip
    end

    def description
      @result.css('div.snippet').text.strip
    end

    def bottom_url
      @result.css('div.url').text.strip
    end
  end
end