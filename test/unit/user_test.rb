require_relative "../test_helper"

class UserTest < SwissCheeseTest

  def test_new_user_not_valid_without_user_name
    user = User.new(password: 'thth1212')
    refute user.save
  end

  def test_new_user_not_valid_without_password
    user = User.new(user_name: 'username')
    refute user.save
  end

  def test_should_create_new_user_with_user_name_and_password
    user = User.new(user_name: 'user name', password: 'password')
    assert user.save
  end
end
