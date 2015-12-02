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
    
    assert_equal user_name_of_crew_owner(crew), user_name
  end
  
  def test_user_name_is_nil
    member = Member.new(nil)
    crew = Crew.new(member)
    
    assert_nil user_name_of_crew_owner(crew)
  end

end

def user_name_of_crew_owner(crew)
  user = crew.owner.user
  return user.name if user
  nil
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
