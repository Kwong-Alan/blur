class blur

  def initialize(Name)
    @Name = []

    row_one = [1,1,1,1]
    row_two = [0,1,0,1]
    row_three = row_one.join(row_two)
    @Name << row_three
  end

end