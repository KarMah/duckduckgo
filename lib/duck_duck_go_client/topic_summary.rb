require 'forwardable'
require 'duck_duck_go'
module DuckDuckGoClient
  class TopicSummary
    extend Forwardable

    OBJ = DuckDuckGo.new
    def_delegators :@ia, :abstract, :abstract_text, :image, :abstract_url, :abstract_source, :heading, 
        :answer, :answer_type, :definition, :definition_source, :definition_url, :type, :results, 
        :related_topics

    def initialize(query)
      @ia = OBJ.zeroclickinfo(query)
    end
    
    def valid?
      true
    end
  end
end