require 'spec_helper'

describe Posting do
  it { should have_valid(:subject).when("Funny", "Very vunny") }
  it { should_not have_valid(:subject).when(nil, " ") }

  it { should have_valid(:story).when("The Brown and lovely cat") }
  it { should_not have_valid(:story).when(nil, " ") }


  it { should belong_to :user }
  it { should have_many :comments}

end
