class Application
    def call(env)
        resp = Rack::Response.new

        if Time.now.hour < 12
            resp.write "Good Morning!"
        else
            resp.write "Good Afternoon!"
        end

        # def pretty_response
        # (Time.now.to_i % 2).zero? ?  ["<em>Hello</em>"] : ["<strong>Hello</strong>"]
        # end
        resp.finish
    end
end