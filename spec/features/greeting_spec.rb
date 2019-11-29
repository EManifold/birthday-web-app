feature 'Greeting' do
  scenario 'Expect name day and month to show up on screen' do
    visit('/')
    fill_in "name", with: 'Ellie'
    select( 1, :from => 'day')
    select( 'January', :from => 'month')
    click_on 'Submit'
    expect(page).to have_content 'Ellie'
  end
end
