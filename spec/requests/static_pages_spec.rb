require 'spec_helper'
 
describe "StaticPages" do

      subject { page }

  describe "Home page" do
    before { visit root_path } 

    it { should have_selector('h1', text: 'Sample App') }
    it { should have_title(full_title('')) }
    it { should_not have_title('| home') }
  end

    describe "help page" do
     before { visit help_path } 
    	 it { should have_selector('h1', text: 'help') }
       it { should have_title(full_title('')) }
    	
    end
    describe "about us" do
      before { visit about_path }
      it { should have_selector('h1', text: 'about us') }
      it { should have_title(full_title('')) }
    end
    
    describe "Contact page" do
    before { visit contact_path }

    it { should have_selector('h1', text: 'contact') }
    it { should have_title(full_title('')) }
  end
end

