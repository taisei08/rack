class ByebyeWorld
  def initialize(app)
    @app = app
  end

  def call(env)
    puts "Byebye, World! before"
    status, headers, body = @app.call(env)
    puts "Byebye, World! after"
    [status, headers, body]
  end
end
