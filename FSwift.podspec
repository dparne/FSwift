Pod::Spec.new do |spec|
  spec.name         = 'FSwift'
  spec.version      = '1.1.4'
  spec.license      =  { :type => 'BSD' }
  spec.homepage     = 'https://github.com/kperson/FSwift'
  spec.authors      = 'Kelton Person'
  spec.summary      = 'functional programming library for Swift'
  spec.source       = { :git => 'https://github.com/kperson/FSwift.git', :tag => 'v1.1.4-7.0' }
  spec.source_files = 'FSwift/**/*.{swift}'
  spec.requires_arc = true
  spec.ios.deployment_target = '7.0'
end
