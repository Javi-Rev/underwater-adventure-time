path = File.realdirpath "tmp/index.html", __dir__
body = File.read path


var = Proc.new do |x|
  [200, {'Content-Type' => 'text/html', 'Content-Length' => body.length.to_s}, [body]]
end

run var
