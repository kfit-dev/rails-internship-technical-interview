require 'rails_helper'

RSpec.describe 'users/index', type: :view do
  before(:each) do
    assign(:users,
           [
             User.create!(
               email: 'Email1',
               first_name: 'First Name',
               last_name: 'Last Name',
               membership_code: 'Membership Code1'
             ),
             User.create!(
               email: 'Email2',
               first_name: 'First Name',
               last_name: 'Last Name',
               membership_code: 'Membership Code2'
             )
           ])
  end

  it 'renders a list of users' do
    render
    assert_select 'tr>td', text: 'First Name'.to_s, count: 2
    assert_select 'tr>td', text: 'Last Name'.to_s, count: 2
  end
end
