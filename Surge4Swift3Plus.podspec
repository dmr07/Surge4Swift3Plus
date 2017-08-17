Pod::Spec.new do |s|
  s.name             = 'Surge4Swift3Plus'
  s.version          = '0.1.0'
  s.summary          = 'Surge updated for Swift 3+'
 
  s.description      = <<-DESC
Surge updated for Swift 3 and 4 compatibility.
                       DESC
 
  s.homepage         = 'https://github.com/dmr07/Surge4Swift3Plus'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Dan M' => 'danielmreed07@gmail.com' }
  s.source           = { :git => 'https://github.com/dmr07/Surge4Swift3Plus.git', :tag => s.version.to_s }
 
  s.ios.deployment_target = '10.0'
  s.source_files = 'Source/*.swift'
 
end