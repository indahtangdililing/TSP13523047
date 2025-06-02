class SampleData
  def self.default_graph
    [
      [0, 10, 15, 20],
      [5, 0, 9, 10],
      [6, 13, 0, 12],
      [8, 8, 9, 0]
    ]
  end

  def self.display_default_graph
    puts "\nContoh default graph (4 kota):"
    puts "[0, 10, 15, 20]"
    puts "[5, 0, 9, 10]"
    puts "[6, 13, 0, 12]"
    puts "[8, 8, 9, 0]"
  end

  def self.small_graph
    [
      [0, 2, 9],
      [1, 0, 6],
      [4, 3, 0]
    ]
  end

  def self.medium_graph
    [
      [0, 10, 15, 20, 25],
      [12, 0, 35, 30, 20],
      [15, 20, 0, 15, 18],
      [25, 30, 10, 0, 12],
      [20, 15, 25, 18, 0]
    ]
  end
end