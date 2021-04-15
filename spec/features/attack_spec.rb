feature "player 1 attacks player 2" do
  scenario "shows confirmation for the attack" do
    sign_in_and_play
    click_button 'attack'
    expect(page).to have_content("You have attacked player2")
  end
end