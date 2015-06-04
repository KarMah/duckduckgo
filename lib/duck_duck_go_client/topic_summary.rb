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
    
    def abstract_url
      @ia.abstract_url
    end
    
    def valid?
      @ia.type.eql?('A')
    end
    
    def first_url
      @ia.results.first.first_url
    end
    
    def image
      @ia.image.to_s
    end
    
    def abstract_image_url
      
    end
  end
end