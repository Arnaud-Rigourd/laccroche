class ProjectPolicy < ApplicationPolicy
  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    def resolve
      scope.all
    end
  end

  def show?
    true
  end

  def new?
    true
  end

  def create?
    # record.user == user
    true
  end

  def top?
    true
  end

  def destroy?
    record.user == user
  end

  def sort?
    true
  end
end
