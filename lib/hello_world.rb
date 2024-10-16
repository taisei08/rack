# Rackミドルウェアは、Rackの規約に則る必要があります
# つまり、callメソッドを持ち、引数としてenvを受け取り、
# ステータス、ヘッダー、ボディの配列を返すオブジェクトである必要があります
class HelloWorld
  def initialize(app)
    # このappは、次に呼ばれるミドルウェアやアプリケーションが入っています
    @app = app
  end

  def call(env)
    puts "Hello, World! before"
    # appは次のミドルウェアが入っているので、リクエストに対する処理はここに書きます
    status, headers, body = @app.call(env)
    # 一番下の階層のアプリケーションまでたどり着いたらここに戻ってくるので、
    # レスポンスに対する処理はここに書きます
    puts "Hello, World! after"
    # 規約に則り、ステータス、ヘッダー、ボディの配列を返しています
    [status, headers, body]
  end
end
