
def pause
  sleep 1.seconds
end

def user_begin
  user = build(:user, login: 'deandb', password: 'deandean')
  user_first_till(user)
end


def user_sign_in(user=nil)
  user ||= build(:user, login: 'deandb', password: 'deandean')
  # @browser.goto root_path
  @browser.goto 'localhost:3000/user/sign_in'
  @browser.text_field( id: 'user_login').set user.login
  @browser.text_field( id: 'user_password').set user.password
  @browser.button(text: 'Login').click
  @browser.wait
end
