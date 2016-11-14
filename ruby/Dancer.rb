class Dancer
  def initialize(name_input, age) 
    @name = name_input
    @age = age
    @dance_type
    @final
    @partners = []
    @statement
    @dancing_partner
  end

  def name
    @name
  end

  def age
    @age 
  end

  def pirouette
    @dance_type = "*twirls*"
  end

  def bow
    @final = "*bows*"
  end

  def queue_dance_with(new_partner)
    @partners = @partners.push(new_partner)
  end

  def card
    @partners
  end

  def begin_next_dance
    @dancing_partner = @partners.shift 
    @statement =  "Now dancing with " +  @dancing_partner + "."
  end
end