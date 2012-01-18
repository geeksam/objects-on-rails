require 'minitest/autorun'
require_relative '../../app/models/blog'
require 'ostruct'

describe Blog do
  before do
    @it = Blog.new
  end

  it "should have no entries" do
    @it.entries.must_be_empty
  end

  describe "#new_post" do
    before do
      @new_post = OpenStruct.new
      @it.post_maker = ->{ @new_post }
    end

    it "should return a new post" do
      @it.new_post.must_equal @new_post
    end

    it "should set the post's blog reference to itself" do
      @it.new_post.blog.must_equal(@it)
    end

  end

  describe "#add_entry" do
    it "should add the entry to the blog" do
      entry = Object.new
      @it.add_entry(entry)
      @it.entries.must_include(entry)
    end
  end
end
