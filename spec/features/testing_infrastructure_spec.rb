feature 'Testing infrastructure' do
  scenario 'Can run app and check page content' do
    visit('/')
    expect(page).to have_content 'Testing infrastructure working!'
  end

  scenario 'adds names to page' do
    visit('/')
    fill_in 'player1', :with => "Alessa"
    fill_in 'player2', :with => "Sam"
    click_button "LET BATTLE COMMENCE"
    expect(page).to have_content 'Alessa vs Sam'
  end
end
