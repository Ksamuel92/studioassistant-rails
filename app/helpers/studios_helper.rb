module StudiosHelper
    def rental_cost_helper(studio)
        if studio.rental_cost = 0
            nil
        else
            "Rental Cost: #{studio.rental_cost}"
        end
    end
end
