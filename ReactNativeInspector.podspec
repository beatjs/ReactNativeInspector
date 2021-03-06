#
# Be sure to run `pod lib lint ReactNativeJsi.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

folly_compiler_flags = '-DFOLLY_NO_CONFIG -DFOLLY_MOBILE=1 -DFOLLY_USE_LIBCPP=1 -Wno-comma -Wno-shorten-64-to-32'
boost_compiler_flags = '-Wno-documentation'

Pod::Spec.new do |s|
  s.name = 'ReactNativeInspector'
  s.version = '0.1.0'
  s.summary = 'An runtime base on react-native.'
  s.description =
  <<-DESC
  'Introduce this library for your App, development by react-native code.'
  DESC

  s.homepage = 'https://github.com/beatjs/ReactNativeInspector'
  s.license = { :type => 'MIT', :file => 'LICENSE' }
  s.author = { 'Liam Xu' => 'liamxujia@outlook.com' }
  s.source = { :git => 'https://github.com/beatjs/ReactNativeInspector.git', :tag => s.version.to_s }
  
  s.module_name = 'jsinspector'
  s.ios.deployment_target = '11.0'
  s.source_files =
  'jsinspector/**/*.cpp'
  
  s.preserve_paths =
  'jsinspector/**/*.h'
  
  s.header_dir = 'jsinspector'
  s.platforms = { :ios => '11.0' }
end
