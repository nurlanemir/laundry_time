Then(/^I should be on the calendar page$/) do
  expect(page.current_path).to eq calendar_index_path
end


Then(/^I should see a calender$/) do
  expect(page).to have_css '.simple-calendar'
end