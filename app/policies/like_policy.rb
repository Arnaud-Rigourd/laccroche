class LikePolicy < ApplicationPolicy
  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    # def resolve
    #   scope.all
    # end
  end

  def create?
    record.user == user
  end

  def destroy?
    # record.user == user
    true
  end
end
