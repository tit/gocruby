# encoding: utf-8

##
# Gocruby
module Gocruby
  ##
  # Controller
  module Controller
    ##
    # recognize
    #
    # @param [Hash] options
    # @option options [String] :file
    #
    # @return [Hash]
    #
    # @example
    #   result = recognize :file => "image_with_text.png"
    #   result[:value] # => "text"
    def self.recognize options
      file = File.exist? options[:file]

      if file
        gocr_result = `gocr #{options[:file]}`
        return {
            :status => true,
            :error => nil,
            :value => gocr_result
        }
      else
        error_message = Gocruby::Model.get_error_message :error => :file_does_not_exist
        return {
            :status => false,
            :error => error_message,
            :value => nil
        }
      end
    end
  end
end