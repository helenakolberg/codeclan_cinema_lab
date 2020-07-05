class Screening

    attr_accessor :time, :film_id
    attr_reader :id

    def initialize(options)
        @id = options['id'].to_i if options['id']
        @time = options['time']
        @film_id = options['film_id']
    end

    def save()
        sql = "INSERT INTO screenings
        (time, film_id)
        VALUES ($1, $2)
        RETURNING id"
        values = [@time, @film_id]
        result = SqlRunner.run(sql, values)
        @id = result[0]['id'].to_i
    end

    def self.delete_all()
        sql = "DELETE FROM screenings"
        SqlRunner.run(sql)
    end

end