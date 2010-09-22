require 'bacon'
require 'bacon/rspec'

describe 'let method' do

  let(:foo) { "foo" }

  it "should equal foo" do
    foo.should == "foo"
  end
  it "should cache foo" do
    foo.should.equal? foo
  end

  it "should set my test variable @foo" do
    @foo = foo
    should.satisfy { true }
  end

  it "should reset foo between tests" do
    foo.should.not.equal? @foo
  end

end
