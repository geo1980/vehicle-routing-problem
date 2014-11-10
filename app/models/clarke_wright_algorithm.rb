module ClearkWrightAlgorith

  class Saving

    def initialize
      @node = 9
      @capacity = 40 #Capacity of a vehicle
      @demands = [0, 10, 15, 18, 17, 3, 5, 9, 4, 6] #People in each node
      @costs = [[0, 12, 11, 7, 10, 10, 9, 8, 6, 12],
                [12, 0, 8, 5, 9, 12, 14, 16, 17, 22],
                [11, 8, 0, 9, 15, 17, 8, 18, 14, 22],
                [7, 5, 9, 0, 7, 9, 11, 12, 12, 17],
                [10, 9, 15, 7, 0, 3, 17, 7, 15, 18],
                [10, 12, 17, 9, 3, 0, 18, 6, 15, 15],
                [9, 14, 8, 11, 17, 18, 0, 16, 8, 16],
                [8, 16, 18, 12, 7, 6, 16, 0, 11, 11],
                [6, 17, 14, 12, 15, 15, 8, 11, 0, 10],
                [12, 22, 22, 17, 18, 15, 16, 11, 10, 0]] #Symmetric costs
    end

    def solution
      #savings_S_ij = cost_C_0i + cost_C_0j - cost_C_ij
    end

    def initial_saving
      data = {}
      (0..@node).each do |i|
        (0..@node).each do |j|
          cost = @costs[0][i] + @costs[0][j] - @costs[i][j]
          data.merge({:"saving#{i}#{j}" => cost})
          puts ["saving#{i}#{j}", cost]
        end
      end
      return data
    end

  end
end