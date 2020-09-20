module InvoicesHelper
    def time_diff( start_time, end_time)
        seconds_diff = (end_time - start_time).abs
       total_hours = Time.at(seconds_diff).utc.strftime "%H"
       return total_hours
    end

    def total_cost(rate, time)
        total = rate * time.to_f
        return total
    end
end
