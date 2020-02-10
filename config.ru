# app=run Proc.new { |env| 
# [
#     '200', # http status
#     {'Content-Type' => 'text/html'}, # Header
#     ['Heloo Rack 1104'] # Body
# ] 
# }

# run app
# app.call(env)

# class Cat
#     def call(env)
# [
#     '200', # http status
#     {'Content-Type' => 'text/html'}, # Header
#     # ['Heloo Cat'] # Body
#      ["Hello Cat #{env}"]
# ] 
# end

# end



# kitty=Cat.new
# run kitty


#-----Middleware-------
class Backdoor
    def initialize(app,who="no one")
        @app = app
        @who = who
    end

    def call(env)
        status,headers,body = @app.call(env)
        body << "<br /> Power by #{@who}!"

        [status,headers,body]
    end
end

use Backdoor, "Henry"


run Proc.new {
    [200, {"Content-Type" => "text/html"}, ["Hello Cat"]] 
} # 注意單引號與雙引號的差別

