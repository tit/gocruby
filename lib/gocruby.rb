# encoding: utf-8

require 'model/model'
require 'controller/controller'

##
# Gocruby
module Gocruby
  ##
  # Gocr
  module Gocr
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
      Gocruby::Controller.recognize options
    end
  end
end