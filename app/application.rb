class Application

    def call(env)
        resp = Rack::Response.new
        time_that_is_now = Time.now.strftime("%H%M") 
    
        if Time.now.strftime("%H%M") > "12:00"
            resp.write "Good Afternoon!"
        else
            resp.write "Good Morning!"
        end
        resp.finish
    end

end