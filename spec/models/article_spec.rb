require 'spec_helper'

describe Article do
  it "has a valid factory" do
    FactoryGirl.create(:article).should be_valid
  end
  it "has a valid title" do
    FactoryGirl.build(:article, title: nil).should_not be_valid
  end
  it "returns article with title and text" do
    FactoryGirl.build(:article, text: nil).should_not be_valid
  end
end
