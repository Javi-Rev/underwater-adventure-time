task default: :build

desc 'Turn the HAML into HTML'
task :build do
  mkdir_p 'tmp'
  cp 'structure.haml', 'tmp'
  cp 'index.js',       'tmp'
  cp 'style.scss',     'tmp'
  cp 'index.html.erb', 'tmp'
  Dir.chdir 'tmp'
  sh 'haml structure.haml structure.html'
  sh 'scss style.scss     style.css'
  sh 'erb  index.html.erb > index.html'
end
