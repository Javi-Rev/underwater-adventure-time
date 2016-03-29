path = File.realdirpath "tmp/index.html", __dir__
body = File.read path

<<<<<<< HEAD

var = Proc.new do |x|
  [200, {'Content-Type' => 'text/html', 'Content-Length' => body.length.to_s}, [body]]
=======
var = Proc.new do |x|
  [200, {"Content-Type" => "text/html", "Content-Length" => body.length.to_s}, [body]]
>>>>>>> javi_attempting_cloud_animations
end

run var
