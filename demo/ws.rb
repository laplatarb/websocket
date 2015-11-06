require 'bundler/setup'
require 'em-websocket'

EM.run do
  EM::WebSocket.start host: '0.0.0.0', port: '8080' do |ws|
    ws.onmessage do |message|
      ws.send "[#{Time.now.strftime '%D %T'}] #{message}"
    end
  end
end
