# This file is used by Rack-based servers to start the application.
# rails sを実行すると、rackupコマンドが実行されてこのファイルが読み込まれ、Rackサーバーの設定とアプリケーションの起動を行います。
require_relative "config/environment"
puts "=== Rackアプリケーションを起動"
run Rails.application
Rails.application.load_server
