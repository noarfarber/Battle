feature "Players names" do
  scenario 'players should be able to fill in their names' do
    sign_in_and_play
    expect(page).to have_content("player1 vs. player2")
  end
end 