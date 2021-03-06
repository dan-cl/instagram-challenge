def user_sign_up
  visit('/')
  click_link('Sign up')
  fill_in('Email', with: 'test@example.com')
  fill_in('Password', with: 'testtest')
  fill_in('Password confirmation', with: 'testtest')
  click_button('Sign up')
end

def create_post
  visit '/posts'
  click_link 'Add a post'
  fill_in 'Caption', with: 'My post'
  click_button 'Post'
end
