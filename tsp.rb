class TSP
  def initialize(graph)
    @graph = graph 
    @n = graph.length
    @memo = {} 
    @path_reconstruction = {} 
  end

  def set_to_mask(set)
    mask = 0
    set.each { |city| mask |= (1 << (city - 1)) } 
    mask
  end

  def mask_to_set(mask)
    set = []
    (0...@n).each do |i|
      set << (i + 1) if (mask & (1 << i)) != 0
    end
    set
  end

  # Fungsi rekursif mencari shortest path
  def solve(i, s_mask)
    # Adjust city index for array access (0-indexed)
    current_city_idx = i - 1

    # Basis
    if s_mask == 0
      @memo[[current_city_idx, s_mask]] = @graph[current_city_idx][0] # Cost back to city 1 (0-indexed)
      return @graph[current_city_idx][0]
    end

    return @memo[[current_city_idx, s_mask]] if @memo.key?([current_city_idx, s_mask])

    min_cost = Float::INFINITY
    best_next_city = nil

    # Iterasi
    (0...@n).each do |j_idx|
      if (s_mask & (1 << j_idx)) != 0 
        cost = @graph[current_city_idx][j_idx] + solve(j_idx + 1, s_mask ^ (1 << j_idx))

        if cost < min_cost
          min_cost = cost
          best_next_city = j_idx + 1 
        end
      end
    end

    @memo[[current_city_idx, s_mask]] = min_cost
    @path_reconstruction[[current_city_idx, s_mask]] = best_next_city
    min_cost
  end

  def find_shortest_tour
    initial_s_mask = (1 << @n) - 1 
    initial_s_mask &= ~(1 << 0)

    optimal_cost = solve(1, initial_s_mask) 

    puts "Optimal cost: #{optimal_cost}"
    path = reconstruct_path
    { cost: optimal_cost, path: path }
  end

  def reconstruct_path
    path = [1]
    current_city_idx = 0 
    current_s_mask = ((1 << @n) - 1) & ~(1 << current_city_idx)

    while current_s_mask != 0
      next_city = @path_reconstruction[[current_city_idx, current_s_mask]]
      path << next_city
      current_s_mask ^= (1 << (next_city - 1)) 
      current_city_idx = next_city - 1
    end
    path << 1 

    puts "Optimal path: #{path.join(' -> ')}"
    path
  end
end