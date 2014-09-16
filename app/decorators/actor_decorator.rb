class ActorDecorator < Draper::Decorator
  delegate_all

  def full_name
    name.try :name
  end

  def profile
    object.profile.decorate
  end

end
