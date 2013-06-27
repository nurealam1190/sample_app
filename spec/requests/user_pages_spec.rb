require 'spec_helper'

describe "UserPages" do
	subject { page }

  describe "signup page" do

  	before { visit signup_path }

    it { should have_selector('h1', text: 'sign up') }
    it { should have_title('sign up') }

    end
  
end
