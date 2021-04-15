feature "Testing_infrastructure" do
  scenario 'should test that infrastructure is working' do
    visit '/' 
    expect(page).to have_content("Battle Game")
  end
end