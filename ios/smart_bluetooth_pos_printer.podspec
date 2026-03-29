#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod lib lint smart_bluetooth_pos_printer.podspec` to validate before publishing.
#
Pod::Spec.new do |s|
  s.name             = 'smart_bluetooth_pos_printer'
  s.version          = '0.0.1'
  s.summary          = 'A new Flutter plugin project.'
  s.description      = <<-DESC
A new Flutter plugin project.
                       DESC
  s.homepage         = 'http://example.com'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'Your Company' => 'email@example.com' }
  s.source           = { :path => '.' }
  # Exclude GSDK connectivity files — they are already provided by bluetooth_print_plus
  # via the GSDK CocoaPod. Including them causes duplicate symbol linker errors.
  s.source_files = 'Classes/FlutterPosPrinterPlatformPlugin.{h,m}'
  s.public_header_files = 'Classes/FlutterPosPrinterPlatformPlugin.h'
  s.static_framework = true
  s.dependency 'Flutter'
  s.platform = :ios, '9.0'

  # libGSDK.a is already provided by bluetooth_print_plus's GSDK CocoaPod dependency.
  # Including it here causes duplicate symbol linker errors. Skip vendored libraries.
  s.frameworks = ["SystemConfiguration", "CoreTelephony","WebKit"]

  # Flutter.framework does not contain a i386 slice.
  # s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES', 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386' }
  # s.swift_version = '5.0'
end
