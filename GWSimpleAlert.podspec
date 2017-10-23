#
# Be sure to run `pod lib lint GWSimpleAlert.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'GWSimpleAlert'
  s.version          = '1.0.2'
  s.summary          = 'A short description of GWSimpleAlert.'

  s.description      = 'Simple UIAlertController and UIAlertAction'

  s.homepage         = 'https://github.com/oper0960/GWSimpleAlert'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Gilwan Ryu2' => 'opop_gwhi@naver.com' }
  s.source           = { :git => 'https://github.com/oper0960/GWSimpleAlert.git', :tag => s.version.to_s }

  s.ios.deployment_target = '8.0'

  s.source_files = 'GWSimpleAlert/Classes/**/*'
end
