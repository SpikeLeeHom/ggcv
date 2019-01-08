Pod::Spec.new do |s|
  s.name         = "ggcv"
  s.version      = "1.0.0"
  s.summary      = 'A short description of ggcv.'
  s.description  = <<-DESC
                   Http and Socks proxy based on Privoxy and Antinat.
                   DESC
  s.homepage     = "https://github.com/SpikeLeeHom/ggcv"
  s.license      = "GPLv2"
  s.author        = { "SpikeLeeHom" => "spikeleeyuuui@gmail.com" }
  s.ios.deployment_target = '9.0'
  s.source     = { :git => 'https://github.com/SpikeLeeHom/ggcv.git', :tag => s.version.to_s }
  s.libraries = 'resolv'
  s.platform                  = :ios
  s.ios.deployment_target     = '9.0'
  s.swift_version             = '4.0'
  s.compiler_flags = "-fcxx-modules"
  s.xcconfig = { 'OTHER_CFLAGS' => '$(inherited) -DSQLITE_HAS_CODEC'}
  s.public_header_files = 'Source/*.framework/Headers/{.h}'
  s.ios.vendored_frameworks   = 'Source/*.framework'
  s.dependency 'RealmSwift', '~> 2.10.2'
  s.dependency 'CocoaAsyncSocket', '~> 7.4.3'
end
