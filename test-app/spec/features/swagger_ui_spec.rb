require 'rails_helper'

feature 'swagger-ui', js: true do

  scenario 'browsing api-docs' do
    visit '/api-docs'

    expect(page).to have_content('GET /blogs Searches blogs')
    expect(page).to have_content('POST /blogs Creates a blog')
    expect(page).to have_content('GET /blogs/{id} Retrieves a blog')
  end
end
