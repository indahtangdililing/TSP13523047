class InputHandler
  def self.get_input_from_user
    puts "=== TSP Solver - Input Graph ==="
    print "Masukkan jumlah kota: "
    n = gets.chomp.to_i
    
    if n < 2
      puts "Jumlah kota harus minimal 2!"
      return nil
    end

    puts "\nMasukkan matriks adjacency (#{n}x#{n}):"
    puts "Masukkan jarak antar kota (0 untuk jarak dari kota ke dirinya sendiri):"
    
    graph = []
    
    (0...n).each do |i|
      row = []
      (0...n).each do |j|
        if i == j
          row << 0
        else
          print "Jarak dari kota #{i+1} ke kota #{j+1}: "
          distance = gets.chomp.to_i
          row << distance
        end
      end
      graph << row
    end
    
    display_matrix(graph)
    graph
  end

  def self.display_matrix(graph)
    puts "\nMatriks yang dimasukkan:"
    graph.each_with_index do |row, i|
      puts "Kota #{i+1}: #{row.inspect}"
    end
  end

  def self.get_user_choice
    puts "Pilih mode:"
    puts "1. Input manual"
    puts "2. Gunakan contoh default"
    print "Pilihan (1/2): "
    gets.chomp
  end

  def self.validate_graph(graph)
    return false if graph.nil? || graph.empty?
    
    n = graph.length
    graph.each do |row|
      return false if row.length != n
    end
    
    true
  end
end