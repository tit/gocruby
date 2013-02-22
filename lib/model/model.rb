# encoding: utf-8

##
# Gocruby
module Gocruby
  ##
  # Model
  module Model
    ##
    # get_error_message
    #
    # @param [Hash] options
    # @option options [Symbol] :error
    #
    # @return [Hash]
    #
    # @example
    #   result = get_error_message :error => :some_error
    #   result[:value] # => "some error"
  def self.get_error_message options
      errors = {
          :file_does_not_exist => 'file does not exist'
      }
      errors[options[:error]]
    end
  end
end