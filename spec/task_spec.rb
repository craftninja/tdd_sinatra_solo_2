require 'spec_helper'
require 'capybara/rspec'
require_relative '../task_app'
Capybara.app = App

feature "User can add tasks to a task list" do
  scenario "User can visit the homepage" do
    visit '/'
    expect(page).to have_content("Welcome!")
  end
end