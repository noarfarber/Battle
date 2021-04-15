feature "player 1 sees player 2's hit points" do
  scenario "shows player 2 hit points" do
    visit '/'
    fill_in 'player1', with: 'player1'
    fill_in 'player2', with: 'player2'
    click_button 'Start'
    expect(page).to have_content('60/60 HP')
  end
end
