require 'spec_helper'

RSpec.describe "PadrinoHeroku::App::PostsHelper" do
  pending "add some examples to (or delete) #{__FILE__}" do
    let(:helpers){ Class.new }
    before { helpers.extend PadrinoHeroku::App::PostsHelper }
    subject { helpers }

    it "should return nil" do
      expect(subject.foo).to be_nil
    end
  end
end
