module Cohber
  class Client
    # Defines methods related to getting a quote
    module Quotes

      def quote(*args)
        response = post("default.aspx", args, true, true)
        parsed = MultiXml.parse(response.body)
        root = parsed["root"]
        reply = root["quoteReply"] unless root.nil?
        reply
      end

    end
  end
end