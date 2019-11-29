feature 'Page content' do
  scenario 'Home page should show certain content when loaded' do
    visit('/')
    expect(page).to have_content 'Hello there!'
  end

  scenario 'Home page should show certain content when loaded' do
    visit('/')
    expect(page).to have_content "What's your name?"
  end

  scenario 'Home page should show certain content when loaded' do
    visit('/')
    expect(page).to have_content "When's your birthday?"
  end
end
