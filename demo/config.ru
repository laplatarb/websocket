require 'bundler/setup'
require 'rack'

app = ->(env) do
  tpl = File.read File.join(__dir__, 'views', 'index.html')
  Rack::Response.new [tpl], 200, {}
end

run app
