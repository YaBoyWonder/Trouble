Pod::Spec.new do |s|
  s.name             = 'Trouble'
    s.version          =  '0.0.1'
    s.summary          = 'A fun game to play with everyone!'
    s.homepage         = ''
   s.license          = { " " }
    s.author           = { "Rahul Chalumuri" => "username@gmail.com" }
    s.source           = { :git => "https://github.com/YaBoyWonder/app-dev", :tag => s.version.to_s }
  s.platform     = :ios, '8.0'
  s.requires_arc = true
  s.source_files = 'Trouble/*'
end
