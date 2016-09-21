class Computer
  attr_accessor :template

  def create_template
    @template = "template 14231"
  end

  def show_template
    template
  end
end

#---------------------------------#

class Computer
  attr_accessor :template

  def create_template
    self.template = "template 14231"
  end

  # Self isn't needed here because show_template invokes the getter method template
  # Ruby's style guide suggests to avoid using self where not required.
  def show_template
    self.template
  end
end
