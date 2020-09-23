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

    def total(client, project)
        total = []
        client.each do |client|
        project.each do |project|
        if client.id == project.id
            time = time_diff(project.start_time, project.end_time)
            cost = total_cost(client.billing_rate, time)
            total.push(cost)

        end
        end
        end
        return total.sum

    end
end
