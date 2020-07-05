class Screening

    attr_accessor :time, :film_id
    attr_reader :id

    def initialize(options)
        @id = options['id'].to_i if options['id']
        @time = options['time']
        @film_id = options['film_id']
    end

    

end