
require 'minitest/autorun'
require './vote_sim_classes.rb'
require './vote_mod.rb'
include VoteSim

class VoteSimTests < MiniTest::Unit::TestCase
  def initialize
    @voter = Voter.new
  end

  def vote_confirm
    assert_equal "voted republican!", @voter.vote_rep?
    assert_equal "voted republican!", @voter.vote_rep?

  end

  # def test_that_it_will_not_blend
  #   refute_match /^no/i, @meme.will_it_blend?
  # end

  # def test_that_will_be_skipped
  #   skip "test this later"
  # end
end

v = VoteSimTests.new

puts v.vote_confirm
