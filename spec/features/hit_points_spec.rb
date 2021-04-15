feature "player 1 sees player 2's hit points" do
  scenario "shows player 2 hit points" do
    sign_in_and_play
    expect(page).to have_content('60/60 HP')
  end
end
