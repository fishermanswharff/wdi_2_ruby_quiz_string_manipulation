require 'spec_helper'
require_relative '../quiz'
# The first question's tests are written.
# run rspec quiz_spec.rb
describe "#sleep_in?" do
  it "returns true if the current day is Saturday or Sunday" do
    # assuming you're answering this on a weekday!
    expect(sleep_in?).to be(false)
  end

  it "takes an options hash as a parameter" do
    parameters = method(:sleep_in?).parameters.first
    expect(parameters).to include(:options)
  end

  it "returns true if vacation is true" do
    question_1 = sleep_in?(vacation: true)
    expect(question_1).to be(true)
  end
end

describe "del_del" do
  it "deletes the string 'del' from any string" do
     deletion_1 = del_del("abdelcd")
     expect(deletion_1).to eq("abcd")
  end
end

describe "missing_char" do
  it "removes characters at given index of a string" do
    deletion_1 = missing_char("kitten",1)
    expect(deletion_1).to eq("ktten")
  end
end

describe "near_hundred" do
  it "returns true if number is within 10 numbers from 100" do
    deletion_1 = near_hundred(91)
    expect(deletion_1).to be(true)
  end
end

describe "back_around" do
  it "takes the last character in a string and places it at the beginning of the string" do
    back_around_1 = "Fusce".back_around
    expect(back_around_1).to eq("eFusce")
  end
end














