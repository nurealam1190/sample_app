require 'spec_helper'
 
describe "StaticPages" do

      subject { page }

  describe "Home page" do
    before { visit root_path } 

    it { should have_selector('h1', text: 'Sample App') }
    it { should have_title(full_title('')) }
    it { should_not have_title('| home') }
    describe "for signed-in users" do
      let(:user) { FactoryGirl.create(:user) }
      before do
        FactoryGirl.create(:micropost, user: user, content: "Lorem ipsum")
        FactoryGirl.create(:micropost, user: user, content: "Dolor sit amet")
        sign_in user
        visit root_path
      end

        it "should render the user's feed" do
          user.feed.each do |item|
            expect(page).to have_selector("li##{item.id}", text: item.content)
          end
        end
    end
  
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

