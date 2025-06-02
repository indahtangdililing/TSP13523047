require_relative 'tsp'
require_relative 'input'
require_relative 'sample'

class TSPApp
  def self.run
    choice = InputHandler.get_user_choice

    case choice
    when "1"
      solve_with_manual_input
    when "2"
      solve_with_default_data
    else
      puts "Pilihan tidak valid!"
    end
  end

  def self.solve_with_manual_input
    graph = InputHandler.get_input_from_user
    return unless InputHandler.validate_graph(graph)
    
    solve_tsp(graph)
  end

  def self.solve_with_default_data
    SampleData.display_default_graph
    puts "\nMenggunakan contoh default (4 kota):"
    graph = SampleData.default_graph
    solve_tsp(graph)
  end

  def self.solve_tsp(graph)
    tsp_solver = TSP.new(graph)
    result = tsp_solver.find_shortest_tour
    
    puts "\n=== Hasil ==="
    puts "Total jarak minimum: #{result[:cost]}"
    puts "Rute optimal: #{result[:path].join(' -> ')}"
  rescue => e
    puts "Error: #{e.message}"
  end
end