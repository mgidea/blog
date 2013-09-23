require 'spec_helper'

describe Comment do
  it { should have_valid(:body).when("The brown cat") }
  it { should_not have_valid(:body).when(nil, " ") }

  it { should have_valid(:posting).when(Posting.new) }
  it { should_not have_valid(:body).when(nil, " ") }

  it { should have_valid(:user).when(User.new) }
  it { should_not have_valid(:user).when(nil) }

  it { should belong_to :user }
  it { should belong_to :posting }

end
