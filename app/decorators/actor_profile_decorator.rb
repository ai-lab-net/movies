class ActorProfileDecorator < Draper::Decorator
  delegate_all

  def cup
    bust_cup.try(:cup)
  end

  def size
    "B:#{bust}(#{cup}),W:#{waist},H:#{hip}"
  end

end
