#
# PA Connect fork: no AmazonChimeSDK-Bitcode (App Store rejects bitcode).
# Live video uses this plugin on Android only; iOS registers a no-op plugin.
#
Pod::Spec.new do |s|
  s.name             = 'flutter_aws_chime'
  s.version          = '0.0.1'
  s.summary          = 'AWS Chime Flutter plugin (PA Connect iOS stub)'
  s.description      = <<-DESC
Android: full Amazon Chime. iOS: stub — no bitcode Chime SDK linked.
                       DESC
  s.homepage         = 'https://github.com/likeconan/flutter_aws_chime'
  s.license          = { :file => '../../LICENSE' }
  s.author           = { 'PA Connect' => 'dev@projectaccess.org' }
  s.source           = { :path => '.' }
  s.source_files = 'Classes/**/*'
  s.dependency 'Flutter'
  s.platform = :ios, '12.0'

  s.pod_target_xcconfig = {
    'DEFINES_MODULE' => 'YES',
    'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386',
  }
  s.swift_version = '5.0'
end
