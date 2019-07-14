Pod::Spec.new do |s|
  s.name = "HYUIKit"
  s.version = "0.0.3"
  s.summary = "The Component of HYUIKit."
  s.license = {"type"=>"MIT", "file"=>"LICENSE"}
  s.authors = {"xxx"=>"http://gitlab.xxx.com/xxx"}
  s.homepage = "https://github.com/oxionghui/HYTipView"
  s.description = "# TODO: Add long description of the pod here."
  s.xcconfig = {"ENABLE_BITCODE"=>"NO"}
  s.source = { :path => '.' }

  s.ios.deployment_target    = '8.0'
  s.ios.vendored_framework   = 'ios/HYUIKit.framework'
end
