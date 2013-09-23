require 'spec_helper'

describe User do
  it { should have_valid(:first_name).when("The brown cat") }
  it { should_not have_valid(:first_name).when(nil, " ") }

  it { should have_valid(:last_name).when(Posting.new) }
  it { should_not have_valid(:last_name).when(nil, " ") }

  it { should have_valid(:password).when(User.new) }
  it { should_not have_valid(:password).when(nil, " ") }

  it { should have_valid(:password_confirmation).when(:password) }
  it { should_not have_valid(:password).when(nil, " ") }

  it { should have_valid(:email).when("tom@yahoo.com", "pete.mike@g.the.com") }
  it { should_not have_valid(:email).when(nil, " ") }

  it { should have_many :comments }
  it { should have_many :postings }

end
