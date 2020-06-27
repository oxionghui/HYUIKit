#
# Be sure to run `pod lib lint DYLiveBusinessComponent.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'HYUIKit'
  s.version = '0.0.3'
  s.summary          = 'The Component of HYUIKit.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
# TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/oxionghui/HYTipView'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'xxx' => 'http://gitlab.xxx.com/xxx' }
  s.source           = { :git => 'https://github.com/oxionghui/HYUIKit.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'
  
  s.source_files = 'HYUIKit/Classes/**/*.{h,m,mm}'
  s.public_header_files = 'HYUIKit/Classes/**/*.h'

  s.resource_bundles =  {
    'HYUIKit' => ['HYUIKit/Assets/**/*.{storyboard,xcassets,xib,plist,png,gif,jpg,webp}']
  }

  s.xcconfig = {
    'ENABLE_BITCODE' => 'NO'
  }

end
