class Screening

    attr_accessor :time, :film_id
    attr_reader :id

    def initialize(options)
        @id = options['id'].to_i if options['id']
        @time = options['time']
    end

    def save()
        sql = "INSERT INTO screenings
        (time)
        VALUES ($1)
        RETURNING id"
        values = [@time]
        result = SqlRunner.run(sql, values)
        @id = result[0]['id'].to_i
    end

    def self.delete_all()
        sql = "DELETE FROM screenings"
        SqlRunner.run(sql)
    end

    def self.find_all()
        sql = "SELECT * FROM screenings"
        result = SqlRunner.run(sql)
        return self.map_items(result)
    end

    def self.map_items(data)
        return data.map { |screening| Screening.new(screening) }
    end

    def delete()
        sql = "DELETE FROM screenings WHERE id = $1"
        values = [@id]
        SqlRunner.run(sql, values)
    end

end