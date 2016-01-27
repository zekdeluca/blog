require 'rails_helper'

RSpec.describe Post, type: :model do

  before(:all) do
    @post = Post.new(title: "My Title", body: "My Body")
  end

  it "should have a matching body" do
    # Sample test case - this would fail
    # expect(@post.body).to eq("Your Body")

    # Sample test case - this would succeed
    expect(@post.body).to eq("My Body")
  end

  it "should have a matching title" do
    # Sample test case - this would fail
    # expect(@post.title).to eq("Your Title")

    # Sample test case - this would succeed
    expect(@post.title).to eq("My Title")
  end

end
