require 'spec_helper'
require 'capybara/rspec'
require_relative '../task_app'
Capybara.app = App

feature "User can add tasks to a task list" do
  scenario "User can visit the homepage" do
    visit '/'
    expect(page).to have_content("Welcome!")
  end
  scenario "User can add a task" do
    visit '/'
    click_on "add a task"
    fill_in "task", with: "Redraft silk shirt pattern"
    click_on "create task!"
    expect(page).to have_content("Welcome!")
    expect(page).to have_content("Redraft silk shirt pattern")
  end
end