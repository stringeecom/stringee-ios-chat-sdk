
Pod::Spec.new do |s|
  s.name             = 'StringeeChat'
  s.version          = '0.2.0'
  s.summary          = 'Developed by Stringee'

  s.description      = <<-DESC
The Stringee platform, developed by Stringee, makes it easy to embed high-quality interactive video, voice, messaging, and screen sharing into web and mobile apps.
                       DESC

  s.homepage         = 'https://github.com/stringeecom/stringee-ios-chat-sdk'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Stringee' => 'info@stringee.com' }
  s.source           = { :git => 'https://github.com/stringeecom/stringee-ios-chat-sdk.git', :tag => s.version.to_s }

  s.ios.deployment_target = '9.0'

  s.pod_target_xcconfig = {'OTHER_LDFLAGS' => '-ObjC'}

  s.source_files = 'StringeeChat/Classes/**/Stringee.framework/Versions/A/Headers/*.h'
  s.public_header_files = 'StringeeChat/Classes/**/Stringee.framework/Versions/A/Headers/*.h'

  s.frameworks = 'CoreFoundation', 'VideoToolbox', 'AudioToolbox', 'AVFoundation', 'GLKit'
  s.libraries = 'icucore', 'stdc++'

  s.vendored_frameworks = 'StringeeChat/Classes/**/Stringee.framework'
  s.dependency "GoogleWebRTC", '1.1.27828'

end
