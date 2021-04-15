feature "Players names" do
  scenario 'players should be able to fill in their names' do
    visit '/'
    fill_in 'player1', with: 'Alfie'
    fill_in 'player2', with: 'Toby'
    click_button 'Start'
    expect(page).to have_content("Alfie vs. Toby")
  end
end 