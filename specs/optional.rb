require "minitest/autorun"

class OptionalTests < MiniTest::Unit::TestCase
  
  def test_env
    assert true
  end
  
  def test_working_chain
    user_name = 'Bob'
    user = User.new(user_name)
    member = Member.new(user)
    crew = Crew.new(member)
    
    assert_equal crew.owner.user.name, user_name
  end
  
end

  
class Crew
  def initialize(owner)
    @owner = owner
  end
  def owner
    @owner
  end
end

class Member
  def initialize(user)
    @user = user
  end
  def user
    @user
  end
end

class User
  def initialize(name)
    @name = name
  end
  def name
    @name
  end
end
