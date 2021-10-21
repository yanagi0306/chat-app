module SignInSupport
  def sign_in(user)
    visit root_path
    fill_in 'user_email', with: user.email
    fill_in 'user_password', with: user.password
    click_on('Log in')
    expect(current_path).to eq(root_path)
  end
  def add_message(message)
    fill_in 'message_content',with:message
    click_on('送信')
  end
end
