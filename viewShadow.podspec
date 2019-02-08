Pod::Spec.new do |s|
  s.name             = 'viewShadow'
  s.version          = '0.1.0'
  s.summary          = 'By far the most fantastic view shadows'
 
  s.description      = <<-DESC
This fantastic view shadow gives shoadow to your view with various option
                       DESC
 
  s.homepage         = 'https://github.com/yashrathod26/viewShadow'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Yash Rathod' => 'yashthedeveloper@gmail.com' }
  s.source           = { :git => 'https://github.com/yashrathod26/viewShadow.git', :tag => s.version.to_s }
 
  s.ios.deployment_target = '10.0'
  s.source_files = 'viewShadow/viewShadow.swift'
 
end