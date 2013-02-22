# encoding: utf-8

require 'rspec'

require 'gocruby'

describe "recognize" do
  it 'should recognize' do
    result = Gocruby::Gocr.recognize :file => 'spec/data/89185025141.png'

    result.should == {
        :status => true,
        :error => nil,
        :value => "8 918 502-51-4l\n"
    }
  end
end