task default: :open

desc 'Build and Run Server'
task server: :build do
  sh 'bundle', 'exec', 'rackup', '-p', ENV.fetch('PORT', '3005')
end

desc 'Open the page'
task open: :build do
  sh 'open', 'tmp/index.html'
end

desc 'Turn the HAML into HTML'
task build: 'tmp/index.html'

directory 'tmp'

file 'tmp/index.html' => ['tmp/style.css', 'tmp/structure.html', 'tmp/index.js'] do
  chdir('tmp') { sh 'erb ../index.html.erb > index.html' }
end

file 'tmp/structure.html' => ['tmp', 'structure.haml'] do
  sh 'haml', 'structure.haml', 'tmp/structure.html'
end

file 'tmp/style.css' => ['tmp', 'style.scss'] do
  sh 'scss', 'style.scss', 'tmp/style.css'
end

file 'tmp/index.js' => ['tmp', 'index.js'] do
  sh 'cp', 'index.js', 'tmp/index.js'
end
