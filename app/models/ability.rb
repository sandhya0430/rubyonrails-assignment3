class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new # guest user (not logged in)

    if user.role == 'teacher'
      can :manage, Student
      can :read, Teacher, id: user.id
    elsif user.role == 'student'
      can :read, Student, id: user.student.id
    end
  end
end
