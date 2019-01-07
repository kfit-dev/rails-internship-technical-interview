require 'rails_helper'

RSpec.describe 'users/edit', type: :view do
  before(:each) do
    @user = assign(:user,
                   User.create!(
                     email: 'MyString',
                     first_name: 'MyString',
                     last_name: 'MyString',
                     membership_code: 'MyString'
                   ))
  end

  it 'renders the edit user form' do
    render

    assert_select 'form[action=?][method=?]', user_path(@user), 'post' do
      assert_select 'input#user_email[name=?]', 'user[email]'

      assert_select 'input#user_first_name[name=?]', 'user[first_name]'

      assert_select 'input#user_last_name[name=?]', 'user[last_name]'

      assert_select 'input#user_membership_code[name=?]', 'user[membership_code]'
    end
  end
end
